Cmds.command "config" do
  usage "# manage current config file"

  var sample : Facebook::Config = Facebook::Config.sample

  def before
    self.logger = Logger.new(nil)
  end
  
  desc "sample [field]", "# show sample values (only for the [field] if given)"
  task sample do
    if field = args.shift?
      k = field.split(".").last
      v = sample[field.gsub(".", "/")]
      puts "%s = %s" % [k, v.inspect]
    else
      puts Facebook::Config::SAMPLE
    end
  end

  desc "show", "# show current values"
  task show do
    puts "# %s" % (config.clue? || "(unknown path)")
    puts config
  end

  desc "test", "# check keys"
  task test do
    src = sample.toml
    dst = config.toml

    results = Array(Array(String)).new
    
    src.each do |group, value|
      if value.is_a?(Array)
        # ignore the case of "loggers"
      elsif value.is_a?(Hash)
        test_group(results, value, dst[group]?, clue: group)
      end
    end

    errors = [] of String

    body = String.build do |io|
      Pretty.lines(results, delimiter: " ").split(/\n/).each do |line|
        case line
        when / # NG/
          errors << line.split(/\s+/).first
          io.puts line.colorize(:red)
        else
          io.puts line
        end
      end
    end

    if config.verbose?
      puts "# #{config.clue}"
      puts "-" * 60
      puts body
      puts "-" * 60
    end
    
    if errors.any?
      msg = String.build do |io|
        io.puts "%d errors" % errors.size
        errors.each do |key|
          io.puts "  #{PROGRAM_NAME} config sample #{key} -v"
        end
      end
      raise Facebook::Config::Error.new(msg)
    end
  end

  private def valid_account_id?(v) : Bool
    !!(v =~ /^\d{1,12}$/)
  end

  private def valid_gdrive?(v) : Bool
    !!(v =~ /^[A-Z0-9-_]+$/i)
  end

  private def test_group(results, src, dst, clue)
    case dst
    when Hash
      # OK
      src.keys.sort.each do |k|
        label = "#{clue}.#{k}"
        if (value = dst[k]?) != nil
          value = Pretty.truncate(value, size: 20)
          results << [label, value, "# OK"]
        else
          results << [label, "---", "# NG: N/A"]
        end
      end
    else
      reason = "Hash is expected (%s)" % [dst.class]
      results << [clue, "---", "# NG: #{reason}"]
    end
  end
end
