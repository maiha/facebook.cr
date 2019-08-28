require "./callback"
require "./strategy"

module Facebook
  class Client
    include Facebook::Callback
    include Facebook::Strategy

    var api  : Api
    var auth : Auth = Facebook::Auth::AccessToken.new("")
    var host : Host = Host.default

    var logger : Logger = Logger.new(nil)

    def initialize(api = nil, auth = nil, host = nil, @logger : Logger? = nil)
      self.api  = api
      self.auth = auth
      self.host = host
    end

    ######################################################################
    ### shortcuts for Facebook class

    def api=(path : String)
      @api = Facebook::Api::Get.parse(path)
    end

    def auth=(access_token : String)
      @auth = Facebook::Auth::AccessToken.new(access_token)
    end

    def host=(host : String)
      @host = Facebook::Host.new(host)
    end

    def dryrun! : Client
      @strategy = Facebook::Strategy::Dryrun.new
      return self
    end

    ######################################################################
    ### API methods

    # See ./api/*.cr
    
    ######################################################################
    ### HTTP methods
    
    def get(path : String, params = {} of String => String) : Response
      execute(api: Api::Get.new(path, data: params))
    end

    def post(path : String, form = {} of String => String) : Response
      execute(api: Api::Post.new(path, form: params))
    end

    ######################################################################
    ### internal methods

    def request(api : Api? = nil, auth : Auth? = nil, host : Host? = nil)  : Request
      Request.new(api || api?, auth || auth?, host || host?)
    end

    def request(req : Request) : Request
      req
    end

    def validate(req : Request)
      req.api?  || raise "api not found"
      req.auth? || raise "auth not found"
      req.host? || raise "host not found"
      req.auth.authorize!(req)
    end
  end
end
