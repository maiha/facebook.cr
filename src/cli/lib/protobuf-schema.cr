# ```proto
# message Account {
#   optional string id                 = 1 ; // "18ce544yq30"
#   optional string timezone_switch_at = 7 ; // "2016-07-21T07:00:00Z"
#   optional string name               = 2 ; // "API McTestface"
# ```
#
# ```crystal
# schema = ProtobufSchema.parse(buf)
# schema.fields.map(&.name) # => ["id", "timezone_switch_at"], "name"]
# ```

module ProtobufSchema
  record Field,
    rule : String,
    type : String,
    name : String,
    num  : String,
    memo : String = "" do

    def clickhouse_type(ignore_rule = false) : String
      klass = {
        "int64"  => "Int64",
        "bool"   => "UInt8",
        "double" => "Float64",
      }[type]? || "String"

      if !ignore_rule
        klass = "Array(#{klass})" if rule == "repeated"
        klass = "Nullable(#{klass})" if rule == "optional"
      end
      return klass
    end
  end

  record Text,
    text : String     

  class Schema
    var klass : String = "XXX"
    var lines = Array(Field | Text).new

    def fields : Array(Field)
      lines.select(&.is_a?(Field)).map(&.as(Field))
    end

    def texts
      lines.select(&.is_a?(Text))
    end
  end

  class Parser
    def initialize(@buf : String)
    end

    def parse : Schema
      group_seq = 0
      schema = Schema.new
      @buf.split(/\n/).each do |line|
        case line
        when /^\s*(optional|repeated|required)\s+(.*?)\s+(.*?)\s*=\s*(\d+)\s*;(.*?)$/
          rule,type,name,num,rest = $1,$2,$3,$4,$5
          schema.lines << Field.new(rule, type, name, num, rest.sub(%r{\A\s*//}, "").strip)

        else
          if line =~ /^\s*message\s+([^\s]+)/
            group_seq += 1
            break if group_seq > 1
            schema.klass = $1.strip
          end
          schema.lines << Text.new(line)
        end
      end

      return schema
    end
  end

  def self.parse(buf : String) : Schema
    Parser.new(buf).parse
  end
end
