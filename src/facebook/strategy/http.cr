module Facebook::Strategy
  class Http < Base
    # HTTP
    var user_agent      : String = "facebook.cr"
    var dns_timeout     : Float64 = 3.0
    var connect_timeout : Float64 = 5.0
    var read_timeout    : Float64 = 300.0
    
    def execute(req : Request) : Response
      #    request.headers["Host"] ||= options.host
      #    request.headers["UserAgent"] ||= 

      http = new_http(req)
      http_req = req.api.build_request(http)
      logger.debug "HTTP request: #{req.full_url}"
      logger.debug "HTTP headers: #{http_req.headers.to_h}"

      begin
        requested_at = Time.now
        http_res = http.exec(http_req)
      rescue err
        logger.error err.to_s
      end
      responsed_at = Time.now

      if res = http_res
        logger.debug "HTTP response (status %s)" % res.status_code
        logger.debug "HTTP response: %s" % res.headers.to_h
      end

      return Response.new(requested_at, req, http_req, http_res)
    end

    protected def new_http(req : Request) : HTTP::Client
      http = HTTP::Client.new(req.host.uri)
      http.dns_timeout     = dns_timeout
      http.connect_timeout = connect_timeout
      http.read_timeout    = read_timeout

      #    client.compress = options.compress
      #    client.exec(request)
      
      return http
    end
  end
end
