require "./response/*"

module Facebook
  class Response
    var requested_at : Time
    var responsed_at : Time

    var req    : Request
    var code   : Int32
    var header : String
    var body   : String
    
    var headers : HTTP::Headers = build_headers

    def initialize(@requested_at, @req, @code, @header, @body)
      @responsed_at = Time.now
    end

    def mime_type? : MIME::MediaType?
      if v = headers["Content-Type"]?
        MIME::MediaType.parse?(v)
      else
        nil
      end
    end

    def media_type? : String?
      mime_type?.try(&.media_type)
    end

    def json? : Bool
      !! (media_type? =~ /json/)
    end
 
    def informational? ; 100 <= code <= 199; end
    def success?       ; 200 <= code <= 299; end
    def redirection?   ; 300 <= code <= 399; end
    def client_error?  ; 400 <= code <= 499; end
    def server_error?  ; 500 <= code <= 599; end

    def success! : Response
      success? || raise Facebook::Api::Error.new(self)
      return self
    end

    def rate_limits : Hash(String, Array(RateLimit))
      if json = headers["x-business-use-case-usage"]?
        RateLimit.parse(json)
      else
        Hash(String, Array(RateLimit)).new
      end
    end

    # return first RateLimit or nil
    def rate_limit? : RateLimit?
      rate_limits.try(&.values.flatten.first?)
    end

    private def build_headers : HTTP::Headers
      headers = HTTP::Headers.new
      header.scan(/^([^\n]+?):\s*([^\n]+?)\r?$/m) do
        headers[$1] = $2
      end

      return headers

      # TODO: use neat and fast parser at crystal-0.30.2
      
      # HTTP.parse_headers_and_body(io, HTTP::BodyType::Prohibited, max_headers_size: header.bytesize) do |headers, body|
      # return headers
      # end
      # raise ArgumentError.new("parse_headers_and_body error")
    end
  end
end
