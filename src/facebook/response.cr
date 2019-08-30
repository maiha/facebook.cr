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

    def success?
      200 <= code <= 299
    end

    def success! : Response
      success? || raise Facebook::Api::Error.new(self)
      return self
    end

    private def build_headers : HTTP::Headers
      headers = HTTP::Headers.new
      header.scan(/^(.*?):\s*(.*?)\r?$/m) do
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
