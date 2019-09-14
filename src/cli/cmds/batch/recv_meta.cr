class Cmds::BatchCmd
  private var meta_limit : Int32 = config.batch_meta_limit

  # 1. (meta)
  protected def recv_meta(name, meta, parser)
    #   1.1 check done
    if msg = meta.meta[META_DONE]?
      update_status "[meta] #{name} (already #{msg})", logger: "INFO"
      return false
    end

    recv.start

    #   1.2 iterate job
    done_count = 0
    act_ids = load_act_ids!
    act_ids.each_with_index do |act_id, i|
      # meta : "20190912/meta/Facebook::Proto::Ad"
      # house: "20190912/meta/Facebook::Proto::Ad/data/act_12345"
      house = meta.chdir(File.join(meta.dir, "data", act_id))
      hint  = "[meta] %s(%s/%s)[%s]" % [name, i+1, act_ids.size, act_id]
      recv_meta_act(act_id, name, house, parser, hint)

      done_count += 1 if house.meta[META_DONE]?
    end

    # mark meta.done if all metas have been finished.
    if done_count == act_ids.size
      meta.meta[META_DONE] = "got #{done_count}"
    end

    recv.stop
    
    # job summary
    msg = "[meta] #{name} (#{done_count}/#{act_ids.size}) [#{recv.last}]"
    update_status msg, logger: "INFO"
  end

  #   1.3 call api
  protected def recv_meta_act(act_id, name, house, parser, hint)
    @retry_attempts = 0       # reset retry

    # if done, nothing to do
    if msg = house.meta[META_DONE]?
      update_status "#{hint} (already #{msg})", logger: "INFO"
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
      # This url contains full fields specifed in config[xxx.cmd]
      url = url_builder(name, {CMD_PARAM_ACT_ID => act_id}).call

      # 1. Minify fields and set new limit by overwriting it
      api = Facebook::Api::Get.parse(url)
      api.data.merge!({"fields" => "id,updated_time", "limit" => meta_limit.to_s})

      # 2. Embeds access token
      url = new_client.tap{|c| c.api = api}.request.authorize!.url

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
        recv_impl(house, parser)
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
        update_status "#{label} [retriable error] #{retry.to_s}", logger: "WARN"
        retry.process!
      rescue err
        if retry = retriable?(err)
          update_status "#{label} [retriable error] #{err.to_s}", logger: "WARN"
          retry.process!
        else
          update_status "#{label} [unhandled error] #{err.to_s}", logger: "ERROR"
          logger.error(err.inspect_with_backtrace)
          raise err
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
    raise err
  end

  private var visited_urls = Set(String).new
end
