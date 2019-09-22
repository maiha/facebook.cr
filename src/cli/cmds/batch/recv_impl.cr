class Cmds::BatchCmd
  private def recv_impl(house, parser, account_id : String? = nil)
    self.last_rate_limit = nil

    client = new_client
    url = house.resume? || loop_action!(done: true)
    url = ReduceData.update_limit(url, limit: reduced_limit?)
    client.authorized_url!(url)

    # validte url before execute
    client.before_execute {|req|
      url = req.url
      case url
      when /\s/
        raise "[BUG] url contains spaces: #{url}"
      when /\baccess_token=/
        visited_urls.includes?(url) &&
          raise "[BUG] already visited: #{url}"
      else
        raise "[BUG] no access_token: #{url}"
      end
    }

    client.after_execute {|req, res|
      if res.try{|r| r.success? && r.client_error? }
        visited_urls << req.url
      end
    }

    api.start
    res = client.execute
    api.stop

    # write rate limit into meta
    rate_limit = res.rate_limit?
    house.meta[META_RATE_LIMIT] = (rate_limit ? Pretty.json(rate_limit.to_json) : nil)
    self.last_rate_limit = rate_limit

    # write status into meta
    house.meta[META_STATUS] = res.code.to_s

    # tiny information for this loop
    this_achievement : String? = nil

    if res.json?
      res_json_or_nil = parser.from_json(res.body)
    else
      res_json_or_nil = nil
    end

    if res.client_error?
      # 408 Request Timeout
      if res.code == 408
        raise try_retry(Exception.new("408 Request Timeout"))
      end

      # 4xx(client errors) are not recoverable in most cases
      msg = "[#{res.code}]"
      if error = res_json_or_nil.try(&.error)
        msg = "%s %s" % [msg, error.inspect]
      end
      loop_action!(done: "#{res.code} ERROR" , warn: msg)
    end

    if error = res_json_or_nil.try(&.error)
      # 5xx(server errors) may be recoverable. Check details.
      case error.type
      when .unknown_error?,  .unhandled?
        # stores into meta, then raises it
        house.meta[META_ERROR] = error.inspect
        raise try_retry(Exception.new("#{res.code} #{error}"))

      when .reduce_data?
        # simply gives up if the feature is not enabled
        config.batch_reduce_data? || raise error.to_s

        # try to reduce the amount of data
        min_limit   = config.batch_reduce_data_min? || DEFAULT_REDUCE_DATA_MIN
        current_url = house.resume? || raise "[BUG] missing current url"
        reduced_url = ReduceData.reduce_data(current_url, min_limit)
        house.checkin(reduced_url)

        limit1 = ReduceData.limit?(current_url)
        limit2 = ReduceData.limit?(reduced_url)
        self.reduced_limit = limit2
        loop_action!(warn: "ReduceData(#{limit1}->#{limit2})", status: "reduced")

      else
        # I miss trait
        raise NotImplementedError.new("[BUG] missing implementation for: #{error}")
      end
    end

    res_json = res_json_or_nil || raise try_retry("expected JSON, but got #{res.media_type?.inspect}")
    res.success? || raise NotImplementedError.new("[BUG] res(#{res.code}) is not supported. (#{res.media_type?.inspect})")

    fetched = res_json.to_a
    if act_id = account_id
      fetched.each{|pb| pb.account_id = act_id}
    end
    house.tmp(fetched)
    this_achievement = "%s [%s]" % [fetched.size, api.last]
    
    next_url = res_json.paging.try(&.next)
    if url = next_url
      house.checkin(url)
    else
      house.checkout
      loop_action!(done: true)
    end

    # stop the loop if rate_limit exceeds our max limit
    if pct = rate_limit.try(&.max_pct)
      if pct > rate_limit_max
        loop_action!(error: "skip due to rate_limit (#{pct})", status: "limited", break_loop: true)
      end
      this_achievement = "#{this_achievement} (limit: #{pct}%)"
    end

    loop_action!(info: this_achievement)
  end

  #   1.3 call api
  protected def recv_impl_act(act_id, name, house, parser, url_builder, hint)
    @retry_attempts = 0       # reset retry

    # if done, nothing to do
    if msg = house.meta[META_DONE]?
      logger.info "%s (already %s)" % [hint, msg]
      return false
    end

    # if 400, nothing to do
    if house.meta[META_STATUS]? == "400"
      msg = "%s (skip: ERROR 400)" % [hint]
      if skip_400
        update_status msg, logger: "INFO"
        return false
      else
        update_status msg
        raise msg
      end
    end

    # check resumable url, or build initial url
    if url = house.resume?
      logger.info "%s found suspended job" % [hint]
    else
      url = url_builder.call
      house.checkin(url)
    end

    loop_counter = 0
    self.retry_attempts = 0
    recv.start

    while house.resume? && !house.meta[META_DONE]?
      loop_counter += 1 if retry_attempts == 0 # increment only when not retry

      label = "#{hint}##{loop_counter}"
      if retry_attempts > 0
        label = "#{label}(retry #{retry_attempts})"
      end

      begin
        if loop_counter > paging_limit
          loop_action!(error: "#{label} reached max loop limit(#{paging_limit})", status: "limited", break_loop: true)
        end
        recv_impl(house, parser, account_id: act_id)
        @retry_attempts = 0       # reset retry
      rescue action : LoopAction
        if msg = action.status?
          house.meta[META_STATUS] = msg
        end
        if msg = action.done?
          house.commit
          msg = "got #{house.count}" if msg == true
          house.meta[META_DONE] = msg.to_s
        end
        if msg = action.info?
          update_status "#{label} #{msg}", logger: "INFO"
          house.meta[META_INFO] = msg
        end
        if msg = action.warn?
          update_status "#{label} #{msg}", logger: "WARN"
          house.meta[META_WARN] = msg
        end
        if msg = action.error?
          update_status "#{label} #{msg}", logger: "ERROR"
          house.meta[META_ERROR] = msg
        end
        @retry_attempts = 0       # reset retry
        break if action.break_loop
      rescue retry : RetryError
        update_status "#{label} #{retry}", logger: "WARN"
        retry.process!
      rescue err
        if retry = retriable?(err)
          update_status "#{label} #{err}", logger: "WARN"
          retry.process!
        else
          update_status "#{label} #{err}", logger: "ERROR"
          logger.error(err.inspect_with_backtrace)
          raise err.to_s
        end
      end
    end

    recv.stop

    limit = last_rate_limit?.try{|i| "#{i.max_pct}%"} || "---"
    msg   = "%s %s [%s] (limit: %s)" % [hint, house.count, recv.last.to_s, limit]
    update_status msg, logger: "INFO"

    return true

  rescue err
    house.meta[META_ERROR] = err.to_s
    raise "#{hint} #{err}"
  end

  private var visited_urls = Set(String).new
end
