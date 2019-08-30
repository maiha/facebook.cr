class Facebook::Config < TOML::Config
  class Error < Exception; end

  var clue : String

  # base
  bool "verbose"
  bool "dryrun"
  bool "colorize"
  int  "limit"
  str  "fields"

  # api
  bool "api/logging"
  str  "api/url"
  str  "api/access_token"
  str  "api/access_token_secret"
  int  "api/paging_limit"
  int  "api/paging_width"
  int  "api/keep_remaining"

  float "api/dns_timeout"
  float "api/connect_timeout"
  float "api/read_timeout"

  # batch
  str  "batch/work_dir"
  str  "batch/shared_dir"
  str  "batch/log"
  bool "batch/gc"
  
  # clickhouse
  str "clickhouse/host"
  int "clickhouse/port"
  str "clickhouse/db"
  str "clickhouse/table"
  
  var enabled_recvs : Set(String) = build_enabled_recvs

  def api_cmd?(model) : String?
    self.str?("#{model}/cmd")
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
    toml["batch"].as(Hash).each do |k,v|
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

  def self.sample
    parse(SAMPLE)
  end
end

Facebook::Config::SAMPLE = <<-EOF
[api]
access_token    = ""

url             = "https://graph.facebook.com"
paging_limit    = 1000
paging_width    = 1000
logging         = true
keep_remaining  = 10

dns_timeout     = 3.0
connect_timeout = 5.0
read_timeout    = 300.0

[batch]
work_dir   = "tmp"
shared_dir = "tmp/shared"
log        = "log"
gc         = true

recv_ad_account = true

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

[ad_account]
cmd = "/v4.0/me/adaccounts -d fields=account_id,name,account_status -d limit=100"
EOF
