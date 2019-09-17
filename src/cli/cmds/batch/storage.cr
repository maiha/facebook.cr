# add methods to open class
class Cmds::BatchCmd
  # internal variables
  var http_house = house(HttpCall)
  var pb_logging = config.batch_pb_logging?

  private macro load(klass)
    disk.measure {
      house({{klass}}).load
    }
  end
  
  private macro save(klass, pbs)
    disk.measure {
      house({{klass}}).save({{pbs}})
    }
  end

  private macro storage(klass)
    Protobuf::Storage({{klass}}).new(File.join(today_dir, "{{klass}}/"), logger: pb_logger, watch: disk)
  end

  private macro house(klass)
    Protobuf::House({{klass}}).new(File.join(today_dir, {{klass.stringify}}), logger: pb_logger, watch: disk)
  end

  private macro house_meta(klass)
    Protobuf::House({{klass}}).new(File.join(today_dir, "meta", {{klass.stringify}}), logger: pb_logger, watch: disk)
  end

  private macro cache(klass)
    Protobuf::House({{klass}}).new(File.join(cache_dir, {{klass.stringify}}), logger: pb_logger, watch: disk)
  end

  private def write_http_call(req : Facebook::Request, res : Facebook::Response?)
    pb = HttpCall.new(
      url: req.url,
      method: req.method.to_s,
      header: "",               # TODO: how to get request header in libcurl
      body: "",                 # TODO: how to get request body in libcurl
      requested_at: Datetime.new(res.try(&.requested_at) || Pretty.now),
    )
    if res
      pb.responsed_at = Datetime.new(res.responsed_at)
      pb.status       = res.code
      pb.res_header   = res.headers.to_h.to_json
      pb.res_body     = res.body
    end
    http_house.save(pb)
  end

  private def pb_logger
    pb_logging ? logger : Logger.new(nil)
  end
end
