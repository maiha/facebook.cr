module Facebook::Auth
  class NotAuthorizedError < Exception
  end

  abstract def authorize!(req : Facebook::Request)

  class AccessToken
    include Auth

    var access_token : String
    
    def initialize(@access_token)
    end

    def authorize!(request) : Bool
      api = request.api
      if token = access_token?
        if !token.empty?
          api.apply_access_token!(token)
          return true
        end
      end
      raise NotAuthorizedError.new
    end
  end
end
