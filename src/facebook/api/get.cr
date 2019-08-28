module Facebook::Api
  class Get
    include Api

    def initialize(@path : String, @data : Hash(String, String)? = nil, @form : Hash(String, String)? = nil)
      @method = Method::GET
    end

    def request_path
      build_request_path
    end
    
    def apply_access_token!(token : String)
      data["access_token"] = token
    end

    def validate!
      # NOP
    end

    def build_request(http : HTTP::Client) : HTTP::Request
      HTTP::Request.new("GET", request_path)
    end

    private def get_next_pages(options, res) : HTTP::Client::Response
      data = IO::Memory.new
      url = accumulate_data_and_return_next!(data, res.body)

      # we have already finished `GET` for 1st page
      (2..options.maxpage).each do |page|
        if url
          res = get(URI.parse(url))
          res.headers["X-FBURL-PAGE"] = page.to_s
          return res if res.status_code != 200
          url = accumulate_data_and_return_next!(data, res.body)
        else
          break
        end
      end

      # closing data
      data << (data.pos == 0 ? "[]" : "]")
      body = String.new(data.to_slice)

      if options.rawdata
        body = String.build{|io| io << "{\"data\": " << body << "}" }
      end

      # build accumulated response
      build_response(res, body)
    end

    # body: "{data: ...}" => "..."
    private def process_output_format(res) : HTTP::Client::Response
      if options.rawdata
        return res
      else
        if body = JSON.parse(res.body)["data"]?.try(&.to_json)
          return build_response(res, body)
        else
          return res
        end
      end
    end

    private def accumulate_data_and_return_next!(io, body) : String?
      json = JSON.parse(body)    
      if data = json["data"]?.try(&.as_a)
        data.each do |v|
          joint = (io.pos == 0) ? "[" : ","
          io << joint << v.to_json << "\n"
        end
      end

      if paging = json["paging"]?
        if n = paging["next"]?
          return n.as_s
        end
      end

      return nil
    end

    private def build_response(res : HTTP::Client::Response, body : String)
      headers = res.headers
      headers.delete("Content-Encoding")
      headers.delete("Content-Length")

      HTTP::Client::Response.new(res.status_code, body: body, headers: headers)
    end
  end
end
