class Facebook::Response
  class Error
    # "error": {
    #   "message": "(#210) A page access token is required to request this resource.",
    #   "type": "OAuthException",
    #   "code": 210,
    #   "fbtrace_id": "xxx"
    JSON.mapping({
      message: String?,
      type: String?,
      code: Int32?,
      error_subcode: Int32?,
      is_transient: Bool?,
      error_user_title: String?,
      error_user_msg: String?,
      fbtrace_id: String?,
    })

    enum Type
      UNHANDLED
      UNKNOWN_ERROR
      REDUCE_DATA
    end

    def type: Type
      case message
      when /Please reduce the amount of data/
        # "code": 1, "message": "Please reduce the amount of data you're asking for, then retry your request"
        return Type::REDUCE_DATA
      when /An .*error .*occurred/
        # "code":1,"message":"An unknown error occurred","error_subcode":99
        # "code":2,"message":"An unexpected error has occurred. Please retry your request later.","type":"OAuthException","is_transient":true
        return Type::UNKNOWN_ERROR
      else
        return Type::UNHANDLED
      end
    end

    def to_s(io : IO)
      msg = error_user_msg || error_user_title || message
      io << "#{type}(#{code}) #{msg}"
    end

    def inspect(io : IO)
      to_s(io)
    end
  end
end
