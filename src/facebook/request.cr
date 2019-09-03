require "./api"
require "./auth"
require "./host"

class Facebook::Request
  var api  : Api
  var auth : Auth
  var host : Host = Host.default

  def initialize(@api = nil, @auth = nil, @host = nil)
  end

  delegate method, path, headers, to: api
  
  def url : String
    u = host.uri.dup
    u.path = api.request_path
    u.to_s
  end

  def authorize! : Request
    auth.authorize!(self)
    return self
  end

  # "GET http://..."
  def to_s(io : IO)
    io << url
  end
end
