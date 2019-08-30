# add methods to open class
class Cmds::BatchCmd
  private macro load(klass)
    disk.measure {
      storage({{klass}}).load
    }
  end
  
  private macro save(klass, pbs)
    disk.measure {
      storage({{klass}}).save({{pbs}})
    }
  end

  private macro storage(klass)
    Protobuf::House({{klass}}).new(File.join(today_dir, {{klass.stringify}}), logger: logger, watch: disk)
  end

  private macro shared(klass)
    Protobuf::House({{klass}}).new(File.join(shared_dir, {{klass.stringify}}), logger: logger, watch: disk)
  end

  private def write_http_call(req : Facebook::Request, res : Facebook::Response?)
    pb = HttpCall.new(
      url: req.full_url,
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
    save(HttpCall, pb)
  end
end
