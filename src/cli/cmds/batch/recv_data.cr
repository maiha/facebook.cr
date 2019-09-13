class Cmds::BatchCmd
  # 2. (data)
  protected def recv_data(name, all_meta, all_data, all_cache, parser)
    #   2.1 check done
    if msg = all_data.meta[META_DONE]?
      logger.info "[recv] %s (already %s)" % [name, msg]
      return false
    end

    #   2.2 iterate job
    done_count = 0
    act_ids = load_act_ids!
    act_ids.each_with_index do |act_id, i|
      hint = "[recv] %s(%s/%s)[%s]" % [name, i+1, act_ids.size, act_id]

      # all_cache: "cache/Facebook::Proto::Ad"
      # act_cache: "cache/Facebook::Proto::Ad/data/act_12345"
      act_cache = all_cache.chdir(File.join(all_cache.dir, "data", act_id))

      # all_meta : "20190912/meta/Facebook::Proto::Ad"
      # act_meta : "20190912/meta/Facebook::Proto::Ad/data/act_12345"
      act_meta = all_meta.chdir(File.join(all_meta.dir, "data", act_id))

      # all_data : "20190912/Facebook::Proto::Ad"
      # act_tmp  : "20190912/Facebook::Proto::Ad/tmp/act_12345"
      act_tmp = all_data.chdir(File.join(all_data.dir, "tmp", act_id))

      #   2.3 use (shared) as cache when updated_time is older or equal
      meta_mtimes  = build_mtimes(act_meta)
      cache_mtimes = build_mtimes(act_cache)
      cache_hit    = Array(String).new
      cache_miss   = Array(String).new
      meta_mtimes.each do |id, mtime|
        if cache_mtimes[id]?.try{|t| t >= mtime}
          cache_hit << id
        else
          cache_miss << id
        end
      end

      if meta_mtimes.empty?
        logger.info "%s (no data)" % [hint]
        done_count += 1
        next
      end
      
      if cache_miss.empty?
        logger.info "%s cache(hit: %d)" % [hint, cache_hit.size]
        pbs = act_cache.load
        act_tmp.write(pbs, {META_DONE => "got #{pbs.size}" })
        done_count += 1
        next
      end
      
      #   2.4 otherwise call api
      if cache_miss.any?
        logger.info "%s cache(hit: %d, miss: %d)" % [hint, cache_hit.size, cache_miss.size]
        recv_data_act(act_id, name, act_tmp, parser, hint)

        #   2.5 write back to cache if done
        if act_tmp.meta[META_DONE]?
          pbs = act_tmp.load
          act_cache.write(pbs, {META_DONE => "got #{pbs.size}"})
          done_count += 1
        end
      end
    end

    # mark meta.done if all metas have been finished.
    if done_count == act_ids.size
      all_data.commit({META_DONE => "got #{done_count}"})
    end
  end

  #   1.3 call api
  protected def recv_data_act(act_id, name, house, parser, hint)
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
      url = url_builder(name, {CMD_PARAM_ACT_ID => act_id}).call

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

  private def build_mtimes(house) : Hash(String, Time)
    mtimes = Hash(String, Time).new # String(id) => Time
    house.load.each_with_index do |pb, i|
      id = pb.id || raise "[BUG] id not found (#{house.dir}:#{i+1})"
      at = pb.updated_time || raise "[BUG] updated_time not found (#{house.dir}:#{i+1})"
      mtimes[id] = at.time
    end
    return mtimes
  end
end
