class Cmds::BatchCmd
  # receive model, and store it in Protobuf::House
  protected def recv_model_impl(house, response_parser, url_builder, hint)
    # if done, nothing to do
    if house.meta[META_DONE]?
      logger.info "%s (skip: cached %d)" % [hint, house.count]
      return false
    end

    # if 400, nothing to do
    if house.meta[META_STATUS]? == "400" && skip_400
      logger.info "%s (skip: ERROR 400)" % [hint]
      return false
    end

    # check resumable url, or build initial url
    if url = house.resume?
      logger.info "%s found suspended job" % [hint]
    else
      url = url_builder.call # this url doesn't contain access token
      url = new_client(api: url).request.authorize!.url # embeds access token
      house.checkin(url)
    end

    loop_counter = 0
    self.retry_attempts = 0
    recv.start

    while house.resume?
      loop_counter += 1
      label = "#{hint}##{loop_counter}"
      if retry_attempts > 0
        label = "#{label}(retry #{retry_attempts})"
      end

      begin
        if loop_counter > paging_limit
          loop_break!("reached max loop limit(#{paging_limit})")
        end
        recv_model_impl_one(house, response_parser)
      rescue action : LoopAction
        action.process!(house, logger, label)
        break if action.break_loop
      rescue err
        if retry = retriable?(err)
          logger.warn("#{label} [retriable error] #{err}")
          retry.process!
        else
          logger.error("#{label} [unhandled error] #{err}")
          logger.error(err.inspect_with_backtrace)
          raise err
        end
      end
    end

    recv.stop

    limit = last_rate_limit?.try{|i| "#{i.max_pct}%"} || "---"
    logger.info "%s %s [%s] (limit: %s)" % [hint, house.count, recv.last.to_s, limit]

    return true

  rescue err
    house.meta[META_ERR] = err.to_s
    raise err
  end

  private def recv_model_impl_one(house, response_parser)
    self.last_rate_limit = nil

    client = new_client
    url = house.resume? || loop_done!
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
      visited_urls << req.url
    }

    api.start
    res = client.execute
    api.stop

    # write rate limit into meta
    rate_limit = res.rate_limit?
    house.meta[META_RATE_LIMIT] = (rate_limit ? Pretty.json(rate_limit.to_json) : nil)
    self.last_rate_limit = rate_limit

    # write state
    house.meta[META_STATUS] = res.code.to_s
    
    parser = response_parser.from_json(res.body)
    next_url = parser.paging.try(&.next)

    # tiny information for this loop
    this_achievement : String? = nil
    
    if res.client_error?
      # 4xx(client errors) are not recoverable in most cases
      msg = "[#{res.code}]"
      if error = parser.error
        msg = "%s %s" % [msg, error.inspect]
      end
      loop_break!(msg)
    end

    if error = parser.error
      # 5xx(server errors) may be recoverable. Check details.
      case error.type
      when .unknown_error?
        # stores into meta, then raises it
        house.meta[META_UNKONW_ERROR] = error.inspect
        raise error.inspect

      when .reduce_data?
        # simply gives up if the feature is not enabled
        config.batch_reduce_data? || raise error.inspect

        # try to reduce the amount of data
        min_limit   = config.batch_reduce_data_min? || DEFAULT_REDUCE_DATA_MIN
        current_url = house.resume? || raise "[BUG] missing current url"
        reduced_url = ReduceData.reduce_data(current_url, min_limit)
        house.checkin(reduced_url)

        limit1 = ReduceData.limit?(current_url)
        limit2 = ReduceData.limit?(reduced_url)
        self.reduced_limit = limit2
        loop_warn! "ReduceData(#{limit1}->#{limit2})"

      when .unhandled?
        # simply raises
        raise error.inspect
      else
        # I miss trait
        raise NotImplementedError.new("[BUG] missing implementation for: #{error.inspect}")
      end
    end

    res.success? || raise "[BUG] not success, but no errors found"
      
    fetched = parser.to_a
    house.tmp(fetched)
    this_achievement = "%s [%s]" % [fetched.size, api.last]
    
    if url = next_url
      house.checkin(url)
    else
      house.checkout
      loop_done!
    end

    # stop the loop if rate_limit exceeds our max limit
    if pct = rate_limit.try(&.max_pct)
      if pct > rate_limit_max
        loop_break!("skip due to rate_limit (#{pct})")
      end
      this_achievement = "#{this_achievement} (limit: #{pct}%)"
    end

    loop_next! this_achievement
  end

  private var visited_urls = Set(String).new
end
