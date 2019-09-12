struct Datetime
  def self.new(time : Time)
    new(time.to_s)
  end

  def time
    Pretty.time(value)
  end

  def to_json(io : IO)
    io << value.to_json
  end

  def to_s(io : IO)
    io << value
  end

  def inspect(io : IO)
    io << "Datetime(#{value})"
  end
end

def Datetime.new(pull : JSON::PullParser)
  new(Pretty.time(pull.read_string).to_local)
end
