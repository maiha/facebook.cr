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
      recv_impl_act(act_id, name, house, parser, recv_meta_url(name, act_id), hint)

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

  private def recv_meta_url(name, act_id)
    url_builder = -> {
      # This url contains full fields specifed in config[xxx.cmd]
      url = url_builder(name, {CMD_PARAM_ACT_ID => act_id}).call

      # 1. Minify fields and set new limit by overwriting it
      api = Facebook::Api::Get.parse(url)
      api.data.merge!({"fields" => "id,updated_time", "limit" => meta_limit.to_s})

      # 2. Embeds access token
      new_client.tap{|c| c.api = api}.request.authorize!.url
    }
  end
end
