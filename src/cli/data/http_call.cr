struct HttpCall
  # required string url            = 1;
  # required string method         = 2;
  # required string header         = 3;
  # required string body           = 4;
  # required Datetime requested_at = 5;
  # optional Datetime responsed_at = 6;
  # optional int32  status         = 7;
  # optional string res_header     = 8;
  # optional string res_body       = 9;

  def uri
    URI.parse(url)
  end

  def to_s(io : IO)
    code = status || "???"
    io << "[%s] %s %s" % [code, method, url]
  end

  def inspect(io : IO)
    array = Array(Array(String)).new
    to_hash.each do |k,v|
      array << [k.to_s, v.inspect]
    end
    io << Pretty.lines(array, delimiter: ": ").gsub(/\s+$/, "")
  end
end
