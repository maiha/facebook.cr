class Cmds::BatchCmd
  # 2. (data)
  protected def recv_data(name, all_meta, all_data, all_cache, parser)
    #   2.1 check done
    if msg = all_data.meta[META_DONE]?
      update_status "[recv] #{name} (already #{msg})", logger: "INFO"
      return false
    end

    recv.start

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

      #   2.3 use (cache) when updated_time is older or equal
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
        logger.info cyan("%s cache(hit: %d)" % [hint, cache_hit.size])
        pbs = act_cache.load
        act_tmp.write(pbs, {META_DONE => "got #{pbs.size}" })
        done_count += 1
        next
      end
      
      #   2.4 otherwise call api
      if cache_miss.any?
        logger.info "%s cache(hit: %d, miss: %d)" % [hint, cache_hit.size, cache_miss.size]
        recv_impl_act(act_id, name, act_tmp, parser, recv_data_url(name, act_id), hint)

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

    recv.stop
    
    # job summary
    msg = "[recv] #{name} (#{done_count}/#{act_ids.size}) [#{recv.last}]"
    update_status msg, logger: "INFO"
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

  private def recv_data_url(name, act_id)
    url_builder = -> {
      # This url contains full fields specifed in config[xxx.cmd]
      url = url_builder(name, {CMD_PARAM_ACT_ID => act_id}).call
      # 1. Embeds access token
      new_client(api: url).request.authorize!.url
    }
  end
end
