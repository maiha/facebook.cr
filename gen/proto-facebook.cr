# This script generates proto schema into `proto/facebook/*`
# from `facebook-ruby-business-sdk/lib/facebook_ads/ad_objects/*.rb`.

require "pretty"
require "protobuf"

SRC_DIR = ".facebook-ruby-business-sdk/lib/facebook_ads/ad_objects"
DST_DIR = "proto/facebook"

UNKNOWN_LOG_PATH = "proto.unknown.log"
REMOVED_LOG_PATH = "proto.removed.log"

PB_TYPES = Protobuf::PB_TYPE_MAP.keys.map(&.to_s)
# ["int32", "int64", "uint32", "uint64", "sint32", "sint64", "bool", "fixed64", "sfixed64", "double", "string", "bytes", "fixed32", "sfixed32", "float"]

PB_ALIAS = {
  "datetime" => "Datetime",
#  "hash"     => "Json",
  "int"      => "int64",
#  "object"   => "Json",
}

# PB_CUSTOM_TYPES = Set{"Datetime", "Json", "Int64Array", "StringArray"}
PB_CUSTOM_TYPES = Set{"Datetime", "Int64Array", "StringArray"}

AVAILABLE_TYPES = Set(String).new
AVAILABLE_TYPES.concat PB_TYPES
AVAILABLE_TYPES.concat PB_CUSTOM_TYPES
AVAILABLE_TYPES.concat PB_ALIAS.keys

UNKNOWN_FIELDS = Array(UnknownField).new

REMOVED_LOGS = Array(String).new

record UnknownField,
       schema : Schema,
       field  : Field

enum PbRule
  OPTIONAL
  REPEATED
end

record PbField,
       rule : PbRule,
       name : String,
       type : String do

  def to_s(io : IO)
    # optional string res_header = 8;
    io << "%s %s %s" % [rule.to_s.downcase, type, name]
  end
end

record Schema,
       path : String,
       klass : String,
       fields : Array(Field) = Array(Field).new do

  def name : String
    File.basename(path, ".rb")
  end

  def to_s(io : IO)
    field_sample = schema.fields.first(3).map(&.name).join(", ")
    io << "%s: %s(%s fields) # %s" % [schema.name, schema.klass, schema.fields.size, field_sample]
  end
end

# field :priority, 'int'
# field :recommendations, { list: 'AdRecommendation' }
record Field,
       name : String,           # "priority"
       type : String do         # "int", "{ list: 'AdRecommendation' }"

  def resolved_rule : String
    if pb = pb?
      rule = pb.rule.to_s.downcase
    else
      rule = "optional"
    end
    return rule
  end

  def resolved_type : String
    if pb = pb?
      type = pb.type
    else
      type = "Json"
    end
    type = PB_ALIAS[type]? || type
    return type
  end

  def resolved_name : String
    name
  end

  def pb? : PbField?
    if AVAILABLE_TYPES.includes?(type)
      return PbField.new(rule: PbRule::OPTIONAL, name: name, type: type)
    end

    case type
    when /^{\s*list:\s*'(int|string|[A-Z].*?)'\s*}$/
      # { list: 'int' }
      # [NG] { list: 'adaccountinsights_action_attribution_windows_enum_param' }
      return PbField.new(rule: PbRule::REPEATED, name: name, type: $1)
    when /^{\s*enum:\s*->\s*{\s*(.*?)\s*}\s*}$/
      # { enum: -> { BID_TYPE }}
      return PbField.new(rule: PbRule::OPTIONAL, name: name, type: "string")
    when /^{\s*list:\s*{\s*enum:\s*->/
      # { list: { enum: -> { AFFECTED_SURFACES }} }
      return PbField.new(rule: PbRule::REPEATED, name: name, type: "string")
    when /^{\s*list:\s*{\s*list:\s*'(int|string)'\s*}\s*}/
      # { list: { list: 'string' } }
      type = $1
      type = "int64" if type == "int"
      type = type.capitalize + "Array"
      return PbField.new(rule: PbRule::REPEATED, name: name, type: type)
    end
    #        { list: 'AdRecommendation' }"
    return nil
  end

  def to_s(io : IO)
    io << "#{name} : #{type}"
  end
end

def extract_schema?(rb_path) : Schema?
  schema : Schema? = nil

  File.read_lines(rb_path).each_with_index do |line, i|
    line_no = i+1
    case line
    when /class\s([A-Z][A-Za-z_0-9]*)\s+<\s+AdObject/
      # class Ad < AdObject

      # exit: A class has already been found. So this is second definition.
      break if schema

      # create schema: This is first class definition.
      schema = Schema.new(rb_path, $1)

    when /^\s*field\s+:([a-z0-9_]+),\s*'?(.*?)'?\s*$/
      # field :priority, 'int'
      # field :recommendations, { list: 'AdRecommendation' }
      
      s = schema || abort "#{rb_path}:#{line_no}: field found before class definition\n#{line}"
      s.fields << Field.new($1, $2)
    end
  end

  return schema
end

def adjust_schema_fields_respect_id!(schema)
  if id = schema.fields.find(&.name.== "id")
    schema.fields.delete(id)
    schema.fields.unshift id
  end
end

def write_proto(schema)
  custom_types = Set(String).new
  type_max_len = 0

  fields = Array(Array(String)).new

  fks = Array(String).new
  schema.fields.each do |f|
    case f.name
    when /^(.*?)_id$/
      fks << $1
    end
  end
  resources = (fks & schema.fields.map(&.name)).to_set

  index = 0
  schema.fields.each_with_index do |f, i|
    type = f.resolved_type
    rule = f.resolved_rule
    name = f.resolved_name

    if type =~ /^[A-Z]/
      unless PB_CUSTOM_TYPES.includes?(type)
        # NG
        REMOVED_LOGS << "#{schema.klass}: ignore '#{name} : #{type}' # ad objects"
        next
      end
    elsif resources.includes?(name)
      # NG
      REMOVED_LOGS << "#{schema.klass}: ignore '#{name} : #{type}' # FK"
      next
    end

    index += 1
    type_max_len = [type_max_len, type.size].max
    fields << [rule, type, name, index.to_s]
    if PB_CUSTOM_TYPES.includes?(type)
      custom_types << type
    end
  end

  # limit max indent size to 20 to avoid too long name
  type_max_len = [type_max_len, 20].min # 12: "array_string" + margin
  name_max_len = schema.fields.select{|f| f.type.size < type_max_len}.map(&.name.size).max? || 12

  field = fields.map{|ary|
    # don't indent name when type is too long
    name_max = (ary[1].size > 20) ? "10" : name_max_len
    "  %s %-#{type_max_len}s %-#{name_max}s = %s;" % ary
  }.join("\n")
  
  import = custom_types.map{|type| %(import "#{type}.proto";)}.join("\n")

  data = <<-EOF
    syntax = "proto2";

    #{import}

    message #{schema.klass} {
    #{field}
    }

    message #{schema.klass}Array {
      repeated #{schema.klass} array = 1;
    }
    EOF

  path = "#{DST_DIR}/#{schema.klass}.proto"
  Pretty::File.write(path, data)
end

def write_unknown_log
  File.open(UNKNOWN_LOG_PATH, "w+") do |f|
    UNKNOWN_FIELDS.each do |uf|
      f.puts "%s: %s" % [uf.schema.name, uf.field.type]
    end    
  end
end

def write_removed_log
  Pretty::File.write(REMOVED_LOG_PATH, REMOVED_LOGS.join("\n"))
end

def show(schema : Schema)
  puts schema
end

def show_summary(schemas)
  ok_s = 0
  ng_s = 0
  ok_f = 0
  ng_f = 0

  schemas.each do |schema|
    oks, ngs = schema.fields.partition{|f| !!f.pb?}
    ok_f += oks.size
    ng_f += ngs.size

    msg = "%s (ok:%d, ng: %d)" % [schema.name, oks.size, ngs.size]
    if ngs.any?
      ng_s += 1
      sample = ngs.first.to_s
      puts "[NG] #{msg} (#{sample})".colorize(:red)
    else
      ok_s += 1
      puts "[OK] #{msg}".colorize(:green)
    end
  end

  puts "[total]"
  puts "  schema: OK:%d, NG:%d" % [ok_s, ng_s]
  puts "  field : OK:%d, NG:%d" % [ok_f, ng_f]
end

# show all fields
def show_all_fields(schemas)
  schemas.each do |schema|
    schema.fields.each do |f|
      if pb = f.pb?
        STDOUT.puts "#{schema.klass}: #{pb}"
      else
        STDERR.puts "#{schema.klass}: #{f.type}"
      end
    end
  end
end

schemas = Dir["#{SRC_DIR}/*.rb"].sort.map{|rb|
  extract_schema?(rb) || abort "no schema found in #{rb}"
}
schemas.each do |schema|
  adjust_schema_fields_respect_id!(schema)
end

AVAILABLE_TYPES.concat schemas.map(&.klass)

# append UnknownField
schemas.each do |schema|
  schema.fields.each do |f|
    if pb = f.pb?
      # OK
    else
      UNKNOWN_FIELDS << UnknownField.new(schema, f)
    end
  end
end

schemas.each do |schema|
  write_proto(schema)
end

write_unknown_log
write_removed_log

show_summary(schemas)

# show_all_fields(schemas)
