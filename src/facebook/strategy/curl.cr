module Facebook::Strategy
  class Curl < Base
    def execute(req : Request) : Response
      raise Dryrun.new(req)
    end

    class Dryrun < Exception
      var lines = Array(String).new
      var req : Request

      delegate api, to: req

      def initialize(@req : Request)
        build_head
        build_data
        build_form
        build_path

        super(to_s)
      end

      def build(delimiter : String = " ")
        lines.join(delimiter)
      end

      def inspect(io : IO)
        io << build(delimiter: " \\\n     ")
      end

      def to_s(io : IO)
        io << build
      end

      private def build_head
        lines << String.build do |io|
          io << "curl -s "
          if api.method.get?
            io << "-G"
          else
            io << "-X %s" % api.method.to_s
          end
        end
      end

      private def build_data
        api.data.each do |key, val|
          lines << "-d '%s=%s'" % [key, val]
        end
      end

      private def build_form
        api.form.each do |key, val|
          lines << "-F '%s=%s'" % [key, val]
        end
      end

      private def build_path
        uri = req.host.uri.dup
        uri.path = ""
        lines << "%s%s" % [uri.to_s.chomp("/"), req.api.path]
      end
    end
  end
end
