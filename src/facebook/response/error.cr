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
      fbtrace_id: String?,
    })
  end
end
