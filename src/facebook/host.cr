class Facebook::Host
  def self.default
    new("https://graph.facebook.com")
  end

  var uri : URI

  def initialize(uri)
    @uri = URI.new(scheme: uri.scheme, host: uri.host, port: uri.port)
  end

  def self.new(url : String)
    new(URI.parse(url))
  end

  def header
    uri = uri? || raise "uri is not determined yet"
    String.build do |io|
      if host = uri.host
        io << host
      end
      if uri.port && !((uri.scheme == "http" && uri.port == 80) || (uri.scheme == "https" && uri.port = 443))
        io << ':'
        io << uri.port.to_s
      end
    end
  end

  def to_s(io : IO)
    io << uri.to_s
  end
end
