class Facebook::Config < TOML::Config
  class Error < Exception; end

  var clue : String

  # base
  
  bool "verbose"
  bool "dryrun"
  int  "limit"

  # api
  bool "api/logging"
  str  "api/url"
  str  "api/consumer_key"
  str  "api/consumer_secret"
  str  "api/access_token"
  str  "api/access_token_secret"
  int  "api/max_page"
  int  "api/page_size"
  int  "api/keep_remaining"

  float "api/dns_timeout"
  float "api/connect_timeout"
  float "api/read_timeout"

  # batch
  str  "batch/log"
  bool "batch/gc"
  bool "batch/keep_http_call"
  str  "batch/daily_dir"
  str  "batch/shared_dir"
  str  "batch/work_dir"
  
  # clickhouse
  str "clickhouse/host"
  int "clickhouse/port"
  str "clickhouse/db"
  str "clickhouse/table"
  
  var enabled_recvs : Set(String) = build_enabled_recvs

  def api_extra_apis
    self.strs("api/extra_apis")
  end

  def facebook_client : Facebook::Client
    client = Facebook::Client.new(
      auth: api_access_token,
    )
    strategy = Facebook::Strategy::Libcurl.new
    {% for x in %w( dns_timeout connect_timeout read_timeout ) %}
      strategy.{{x.id}} = api_{{x.id}}?
    {% end %}
    client.strategy = strategy

    client.dryrun! if dryrun?
    client
  end

  private def build_enabled_recvs
    set = Set(String).new
    toml["api"].as(Hash).each do |k,v|
      if v && (k =~ /^recv_(.*?)$/)
        set << $1
      end
    end
    set
  end

  # callback for initialize
  def init!
  end

  def build_logger(path : String?) : Logger
    build_logger(self.toml["logger"]?, path)
  end

  def build_logger(hash, _path : String?) : Logger
    case hash
    when Nil
      return Logger.new(nil)
    when Array
      CompositeLogger.new(hash.map{|i| build_logger(i, _path).as(Logger)})
    when Hash
      mode = hash["mode"]?.try(&.to_s) || "w+"
      path = hash["path"]?.try(&.to_s) || _path || raise Error.new("logger.path is missing")
      name_part = hash["name"]?.try{|s| "[#{s}] "} || ""

      io = {"STDOUT" => STDOUT, "STDERR" => STDERR}[path]? || File.open(path, mode)
      io.sync = true

      logger = Logger.new(io)
      logger.level = Logger::Severity.parse(hash["level"].to_s) if hash["level"]?
      logger.formatter = Logger::Formatter.new do |level, time, progname, message, io|
        mark = level.to_s[0]
        # time = time.to_s("%Y-%m-%d %H:%M:%S")
        time = time.to_s("%H:%M:%S")
        io << mark << ", [" << time << "] " << name_part << message
        # I, [2017-12-04 20:15:59] ...
      end                                              
      return logger
    else
      raise Error.new("logger type error (#{hash.class})")
    end
  end

  def to_s(io : IO)
    max = @paths.keys.map(&.size).max
    @paths.each do |(key, val)|
      io.puts "  %-#{max}s = %s" % [key, val]
    end
  end

  private def pretty_dump(io : IO = STDERR)
    io.puts "[config] #{clue?}"
    io.puts to_s
  end
end

class Facebook::Config < TOML::Config
  def self.parse_file(path : String)
    super(path).tap(&.clue = path)
  end

  def self.empty
    parse("")
  end

  @@current : Facebook::Config = empty
  def self.current : Facebook::Config
    @@current
  end

  def self.current=(v) : Facebook::Config
    @@current = v
  end
end
