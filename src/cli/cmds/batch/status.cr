class Cmds::BatchCmd
  private def status_model(klass_name, name, storage)
    max   = MODEL_NAMES.map(&.size).max || 10
    watch = Pretty::Stopwatch.new
    count = watch.measure{ storage.load.size }
    puts "%-#{max}s: %6s [%s]" % [klass_name, count, watch.last]
  end

  {% begin %}
  def status_impl
    puts "[%s] # %s" % [target_date.to_s("%F"), pretty_dir(today_dir)]
    {% for klass in MODEL_CLASS_IDS %}
      {% name   = klass.stringify.underscore %}
      {% kname  = klass.stringify %}
      {% proto  = "Facebook::Proto::#{kname.id}".id %}
      if enabled?({{proto}})
        status_model({{kname}}, {{name}}, storage({{proto}}))
      end
    {% end %}
  end
  {% end %}
end
