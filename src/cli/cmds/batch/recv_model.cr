class Cmds::BatchCmd
  protected def recv_model(name, house, parser)
    hint = "[recv] #{name}"
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
        logger.info msg
      else
        logger.error msg
      end
      return false
    end

    # check resumable url, or build initial url
    if url = house.resume?
      logger.info "%s found suspended job" % [hint]
    else
      # This url contains full fields specifed in config[xxx.cmd]
      url = url_builder(name).call

      # 1. Embeds access token
      url = new_client(api: url).request.authorize!.url

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
          logger.info "#{label} #{msg}"
          house.meta[META_INFO] = msg
        end
        if msg = action.warn?
          logger.warn "#{label} #{msg}"
          house.meta[META_WARN] = msg
        end
        if msg = action.error?
          logger.error "#{label} #{msg}"
          house.meta[META_ERROR] = msg
        end
        @retry_attempts = 0       # reset retry
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
    house.meta[META_ERROR] = err.to_s
    raise err
  end
end
