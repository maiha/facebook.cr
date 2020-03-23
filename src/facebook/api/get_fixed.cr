module Facebook::Api
  class GetFixed
    include Api

    def initialize(@path : String)
      @method = Method::GET
    end

    def request_path : String
      path
    end
    
    def apply_access_token!(token : String)
      # NOP because fixed
    end

    def validate!
      # NOP because fixed
    end
  end
end
