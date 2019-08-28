module Facebook
  class Response
    var requested_at : Time
    var responsed_at : Time

    var req : Request
    
    var code     : Int32 = -1
    var success  : Bool = false
    var http_req : HTTP::Request
    var http_res : HTTP::Client::Response
    var headers  : HTTP::Headers
    var body     : String
    
    def initialize(@requested_at, @req, @http_req, @http_res)
      @responsed_at = Time.now
      if res = http_res?
        @code    = res.status_code
        @success = res.success?
        @headers = res.headers
        @body    = res.body
      end
    end

    # overrides to ensure http_res exists, otherwise raises
    def body : String
      http_res.body
    end

    def headers : HTTP::Headers
      http_res.headers
    end

    def http_res
      http_res? || raise Facebook::Api::Error.new(self)
    end

    def success! : Response
      success? || raise Facebook::Api::Error.new(self)
      return self
    end
  end
end
