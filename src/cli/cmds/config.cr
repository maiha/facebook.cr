Cmds.command "config" do
  usage "sample (field) # show sample values"
  usage "show           # show current values"
  usage "check          # verify keys"

  def before
    self.logger = Logger.new(nil)
  end
  
  task sample do
    if field = args.shift?
      k = field.split(".").last
      v = sample_config[field.gsub(".", "/")]
      puts "%s = %s" % [k, v.inspect]
    else
      puts CONFIG_SAMPLE
    end
  end

  task show do
    puts "# %s" % (config.clue? || "(unknown path)")
    puts config
  end

  task test do
    src = sample_config.toml
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

  private def sample_config
    Facebook::Config.parse(CONFIG_SAMPLE)
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

CONFIG_SAMPLE = <<-EOF
[api]
access_token    = ""

url             = "https://graph.facebook.com"
page_size       = 1000
max_page        = 1000
logging         = true
keep_remaining  = 10

dns_timeout     = 3.0
connect_timeout = 5.0
read_timeout    = 300.0

recv_adaccounts = true

[batch]
work_dir   = "./"
daily_dir  = "../daily"
shared_dir = "../shared"
log        = "../log"
gc         = true

[clickhouse]
host  = "localhost"
port  = 9000
db    = "facebook"

[[logger]]
progname = "facebook"
level    = "DEBUG"
mode     = "a+"

[[logger]]
path     = "STDOUT"
level    = "INFO"

[[logger]]
path     = "warn"
level    = "WARN"

[[logger]]
path     = "err"
level    = "ERROR"
EOF