module Protobuf
  class ClickhouseTsv
    macro builder(klass)
      _a_ = Set(String).new
      _f_ = Hash(String, String).new

      {% for tag, h in klass.resolve.constant("FIELDS") %}
        {% name = h[:name].stringify.gsub(/:/,"") %}
        {% type = h[:crystal_type].stringify.gsub(/:/,"") %}
        {% if h[:repeated] %}
          _a_ << {{name}}
        {% end %}
        _f_[{{name}}] = {{type}}
      {% end %}
      Clickhouse::TSV::TypelessBuilder.new(_a_, _f_)
    end
  end
end
