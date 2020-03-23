module Facebook::Api
  abstract def request_path : String
  abstract def apply_access_token!(token : String)
  abstract def validate!

  class Error < Exception
    var response : Response

    def initialize(@response : Response)
      super(to_s)
    end

    def to_s(io : IO)
      io << response.code.to_s
    end
  end

  enum Method
    GET
    POST
    PUT
    HEAD
    DELETE
    PATCH
  end

  var method : Method
  var path : String
  var data : Hash(String, String) = Hash(String, String).new # query parameters
  var form : Hash(String, String) = Hash(String, String).new # form parameters

  protected def build_request_path
    return path if data.empty?

    params = Array(String).new
    data.each do |key, value|
      params << "%s=%s" % [key, value].map{|i| Pretty::URI.escape(i)}
    end
    delimiter = path.includes?("?") ? "&" : "?"
    path + delimiter + params.join("&")
  end
  
  private def to_query_string(hash : Hash)
    HTTP::Params.build do |form_builder|
      hash.each do |key, value|
        form_builder.add(key, value)
      end
    end
  end

  def to_s(io : IO)
    io << http.method << ' ' << http.path
  end

  macro included
    def self.parse(s : String)
      api  = new("/")
      path = nil
      args = s.split(/\s+/)
      while arg = args.shift?
        case arg
        when "-d", "-f"
          hash = (arg == "-d") ? api.data : api.form
          v = args.shift? || raise ArgumentError.new("#{arg} expects value, but nothing given")
          case v
          when /^(.*?)=(.*)$/
            hash[$1] = $2
          else
            raise ArgumentError.new("#{arg} expects 'k=v' format, but got #{v.inspect}")
          end
        when /^-/
          raise ArgumentError.new("unknown option found #{arg.inspect}")
        else
          if path
            args.unshift arg
            raise ArgumentError.new("extra args found: #{args.inspect}")
          else
            api.path = arg
            path = arg
          end            
        end
      end
      return api
    end
  end
end

require "./api/*"
