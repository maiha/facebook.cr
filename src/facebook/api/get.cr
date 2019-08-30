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
  end
end
