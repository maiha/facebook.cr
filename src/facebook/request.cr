require "./api"
require "./auth"
require "./host"

class Facebook::Request
  var api  : Api
  var auth : Auth
  var host : Host = Host.default

  def initialize(@api = nil, @auth = nil, @host = nil)
  end

  def full_url : String
    u = host.uri.dup
    u.path = api.request_path
    u.to_s
  end

  # "GET http://..."
  def to_s(io : IO)
    io << full_url
  end
end
