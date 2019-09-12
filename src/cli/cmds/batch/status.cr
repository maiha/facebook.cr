class Cmds::BatchCmd
  private def status_model(klass_name, max, house) : Float64
    watch = Pretty::Stopwatch.new
    watch.start

    pct   = 0_f64
    count = 0
    hint  = nil

    if house.meta[META_DONE]?
      pct   = 100_f64
      count = house.count
      hint  = "(finished)"
    else
      counts = Hash(String, Int32).new
      tmp_dir = house.tmp.path
      total = 0
      ok    = 0
      if Dir.exists?(tmp_dir)
        Dir.new(tmp_dir).each_child do |d|
          path = File.join(tmp_dir, d)
          next unless Dir.exists?(path)
          total += 1

          act = house.chdir(path)
          # disable DEBUG logging since that is huge but not important here
          act.tmp.logger.level = "INFO"
          act.data.logger.level = "INFO"

          if act.meta[META_DONE]?
            status = "done"
            ok += 1
          else
            status = act.meta[META_STATUS]? || "---"
          end

          counts[status] = (counts[status]? || 0) + 1
          cnt = act.tmp.load.size + act.data.load.size
          count += cnt
        end
        if total == 0
          pct = 0_f64
        elsif total == ok
          pct = 100_f64
        else
          pct = ok*100.0/total
        end
        hint = counts.inspect
      else
        hint = "(dir not found)"
      end
    end

    watch.stop
    msg = "  %-#{max}s: %6s [%s]" % [klass_name, count, watch.last]
    msg = "#{msg} # #{hint}" if hint
    msg = colorize(msg, (pct >= 100) ? :green : :yellow)
    logger.info msg

    return pct
  end

  {% begin %}
  def status_impl
    self.disable_after = true

    max = MODEL_NAMES.map(&.size).max || 10
    pcts = Array(Float64).new
    logger.info "[%s] # %s" % [target_date.to_s("%F"), pretty_dir(today_dir)]
    {% for klass in MODEL_CLASS_IDS %}
      {% name   = klass.stringify.underscore %}
      {% kname  = klass.stringify %}
      {% proto  = "Facebook::Proto::#{kname.id}".id %}
      if enabled?({{proto}})
        pcts << status_model({{kname}}, max, house({{proto}}))
      end
    {% end %}

    if pcts.empty?
      total_pct = 0.0
    else
      base = 100.0 / pcts.size
      total_pct = pcts.map{|pct| pct == 100 ? base : (base * pct / 100)}.sum
    end
    
    if total_pct >= 100
      logger.info green("finished 100%")
    else
      pct = "%.1f" % total_pct
      raise Cmds::Halt.new("finished #{pct}%")
    end
  end
  {% end %}
end
