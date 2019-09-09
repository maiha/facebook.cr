class Clickhouse
  module TSV
    class TypelessBuilder
      var array_fields = Set(String).new
      var field_types  = Hash(String, String).new

      def initialize(@array_fields, @field_types)
      end

      def build_value(k : String, v) : String
        if array_field?(k)
          if v
            case field_type?(k)
            when "String"
              # Crystal CSV: convert ["foo"] to "[""foo""]"
              # ClickHouse: fails with above value
              # ClickHouse: expects "['foo']"
              # quotes should be escaped like "['fo\'o','ba""r']"
              if v && v.is_a?(Array)
                v = "[%s]" % v.map{|i|
                  "'%s'" % i.to_s.gsub(/'/,"\\'").gsub(/"/,%(""))
                }.join(",")
              else
                v = "[]"
              end
            when "Bool"
              # ClickHouse use UInt8 for Boolean
              v = v ? 1 : 0
            else
              # Otherwise, delegates to CSV builder
            end
          else
            # empty array
            v = "[]"
          end
        else
          # (not Array)
          case field_types[k]
          when "Bool"
            # ClickHouse use UInt8 for Boolean
            v = v ? 1 : 0
          when "String"
            # convert TAB and RET to spaces
            v = v.to_s.gsub('\t', ' ').gsub('\n', ' ')
            # escape backslashes
            v = escape_backslashes(v)
          when "Int64"
            # Nullable
            v = v.to_s.empty? ? "\\N" : v
          end
        end
        v
      end

      private def array_field?(k) : Bool
        array_fields.includes?(k)
      end

      private def field_type?(k) : String?
        field_types[k]?
      end
    end
  end
end
