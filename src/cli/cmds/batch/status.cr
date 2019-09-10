class Cmds::BatchCmd
  private def status_model(klass_name, max, house)
    watch = Pretty::Stopwatch.new
    watch.start

    count = 0
    done  = true
    hint  = nil

    if house.meta[META_DONE]?
      count = house.count
      hint  = "(finished)"
    else
      counts = Hash(String, Int32).new
      tmp_dir = house.tmp.path
      if Dir.exists?(tmp_dir)
        Dir.new(tmp_dir).each_child do |d|
          path = File.join(tmp_dir, d)
          next unless Dir.exists?(path)

          act = house.chdir(path)
          if act.meta[META_DONE]?
            status = "done"
          else
            done = false
            status = act.meta[META_STATUS]? || "---"
          end

          counts[status] = (counts[status]? || 0) + 1
          cnt = act.tmp.load.size + act.data.load.size
          count += cnt
        end
        hint = counts.inspect
      else
        hint = "(dir not found)"
      end
      done = false if count == 0
    end

    watch.stop
    msg = "%-#{max}s: %6s [%s]" % [klass_name, count, watch.last]
    msg = "#{msg} # #{hint}" if hint
    msg = colorize(msg, done ? :green : :yellow)
    puts msg
  end

  {% begin %}
  def status_impl
    max = MODEL_NAMES.map(&.size).max || 10
    puts "[%s] # %s" % [target_date.to_s("%F"), pretty_dir(today_dir)]
    {% for klass in MODEL_CLASS_IDS %}
      {% name   = klass.stringify.underscore %}
      {% kname  = klass.stringify %}
      {% proto  = "Facebook::Proto::#{kname.id}".id %}
      if enabled?({{proto}})
        status_model({{kname}}, max, house({{proto}}))
      end
    {% end %}
  end
  {% end %}
end
