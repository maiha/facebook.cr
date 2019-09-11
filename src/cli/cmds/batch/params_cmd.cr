class Cmds::BatchCmd
  record ParamsCmd, cmd : String do
    var params = Array(String).new

    def to_s(io : IO)
      io << cmd
    end

    def resolve(vals : Hash(String, String)) : String
      exp = params.sort
      got = vals.keys.sort
      exp == got || raise ArgumentError.new("parameter mismatch: expected %s, buto got %s (%s)" % [exp.inspect, got.inspect, cmd])

      buf = cmd
      vals.each do |key, val|
        buf = buf.gsub("{#{key}}", val)
      end
      return buf
    end

    def self.parse?(s : String?) : ParamsCmd?
      if s
        cmd = new(s)
        s.scan(/{(.*?)}/) do
          cmd.params << $1
        end
        return cmd
      else
        return nil
      end
    end
  end
end
