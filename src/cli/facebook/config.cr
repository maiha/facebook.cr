class Facebook::Config < TOML::Config
  class Error < Exception; end

  var clue : String

  # base
  bool "verbose"
  bool "dryrun"
  bool "colorize"
  i32  "limit"
  str  "fields"

  # api
  bool "api/logging"
  str  "api/url"
  str  "api/access_token"
  str  "api/access_token_secret"
  i32  "api/paging_limit"
  i32  "api/keep_remaining"

  f64  "api/dns_timeout"
  f64  "api/connect_timeout"
  f64  "api/read_timeout"

  # batch
  str  "batch/work_dir"
  str  "batch/cache_dir"
  str  "batch/status_log"
  i32  "batch/meta_limit"
  bool "batch/gc"
  bool "batch/pb_logging"
  bool "batch/skip_400"
  bool "batch/reduce_data"
  i32  "batch/reduce_data_min"
  i32  "batch/rate_limit_max"
  bool "batch/pretty_rate_limit"
  i32  "batch/max_attempts"

  # clickhouse
  str "clickhouse/host"
  i32 "clickhouse/port"
  str "clickhouse/db"
  str "clickhouse/table"
  
  var enabled_recvs : Set(String) = build_enabled_recvs

  def api_cmd?(model) : String?
    self.str?("#{model}/cmd")
  end

  def skip_400?(model) : Bool?
    v = self["#{model}/skip_400"]?
    case v
    when Bool
      v
    else
      batch_skip_400?
    end
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
      Pretty::Logger.new(hash.map{|i| build_logger(i, _path).as(Logger)})
    when Hash
      hint = hash["name"]?.try{|s| "[#{s}]"} || ""
      hash["path"] ||= _path || raise Error.new("logger.path is missing")
      logger = Pretty::Logger.build_logger(hash)
      logger.formatter = "{{mark}},[{{time=%H:%M}}] #{hint}{{message}}"
      return logger
    else
      raise Error.new("logger type error (#{hash.class})")
    end
  end

  def build_batch_status_logger?
    if path = batch_status_log?
      Dir.mkdir_p(File.dirname(path)) if path != "STDOUT" && path != "STDERR"
      opts = {
        "path"   => path,
        "mode"   => "a+",
        "level"  => "INFO",
        "format" => "{{mark}},[{{time=%H:%M}}] {{message}}",
      }
      return Pretty::Logger.new(Pretty::Logger.build_logger(opts))
    else
      return nil
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
logging         = true
keep_remaining  = 10

dns_timeout     = 3.0
connect_timeout = 5.0
read_timeout    = 300.0

[batch]
work_dir        = "recv"
cache_dir       = "cache"
status_log      = "log"
gc              = true
pb_logging      = false
meta_limit      = 500
max_attempts    = 5
skip_400        = true
reduce_data     = true
reduce_data_min = 10
rate_limit_max  = 90
pretty_rate_limit = true

# main models
recv_ad_account = true
recv_ad_set     = true
recv_campaign   = true
recv_ad         = true

# mutable and belongs to account
recv_ad_image              = true
# recv_ad_label              = true
# recv_ad_rule               = true
# recv_ad_study              = true
# recv_ad_video              = true
# recv_user                  = true

# recv_ad_async_request      = true
# recv_ad_async_request_set  = true
# recv_ad_campaign_activity  = true
# recv_ad_topline            = true
# recv_ads_insights          = true
# recv_album                 = true
# recv_business              = true
# recv_business_role_request = true
# recv_event                 = true
# recv_group                 = true
# recv_life_event            = true
# recv_open_graph_object     = true
# recv_page_call_to_action   = true
# recv_page_post             = true
# recv_photo                 = true
# recv_post                  = true
# recv_unified_thread        = true

[clickhouse]
host  = "localhost"
port  = 9000
db    = "facebook"

[[logger]]
progname = "facebook"
level    = "DEBUG"

[[logger]]
path     = "STDOUT"
level    = "=INFO"
colorize = true

[[logger]]
path     = "STDERR"
level    = ">=WARN"
colorize = true

[ad_account]
# funding_source raises "Permission Denied" see #2
cmd = "/v6.0/me/adaccounts -d limit=100 -d fields=account_id,name,age,amount_spent,balance,business_city,business_country_code,business_name,business_state,business_street,business_street2,business_zip,can_create_brand_lift_study,created_time,currency,disable_reason,end_advertiser,end_advertiser_name,fb_entity,has_migrated_permissions,io_number,is_attribution_spec_system_default,is_direct_deals_enabled,is_in_3ds_authorization_enabled_market,is_in_middle_of_local_entity_migration,is_notifications_enabled,is_personal,is_prepay_account,is_tax_id_required,line_numbers,media_agency,min_campaign_group_spend_cap,min_daily_budget,offsite_pixels_tos_accepted,owner,partner,spend_cap,tax_id,tax_id_status,tax_id_type,timezone_id,timezone_name,timezone_offset_hours_utc"
skip_400 = false

[ad_set]
cmd = "/v6.0/{act_id}/adsets -d limit=100 -d fields=id,account_id,asset_feed_id,bid_amount,bid_strategy,budget_remaining,campaign_id,created_time,creative_sequence,daily_budget,daily_min_spend_target,daily_spend_cap,destination_type,effective_status,end_time,instagram_actor_id,is_dynamic_creative,lifetime_budget,lifetime_imps,lifetime_min_spend_target,lifetime_spend_cap,name,optimization_goal,optimization_sub_event,pacing_type,recurring_budget_semantics,review_feedback,rf_prediction_id,source_adset_id,start_time,status,targeting,time_based_ad_rotation_id_blocks,time_based_ad_rotation_intervals,updated_time,use_new_app_click,date_format,execution_options,rb_prediction_id,time_start,time_stop"

[campaign]
cmd = "/v6.0/{act_id}/campaigns -d fields=id,account_id,bid_strategy,boosted_object_id,budget_rebalance_flag,budget_remaining,buying_type,can_create_brand_lift_study,can_use_spend_cap,configured_status,created_time,daily_budget,effective_status,last_budget_toggling_time,lifetime_budget,name,objective,pacing_type,source_campaign_id,spend_cap,start_time,status,stop_time,topline_id,updated_time,execution_options"

[ad]
# preview_shareable_link: raises "Unsupported get request." for some ads
cmd = "/v6.0/{act_id}/ads -d limit=80 -d fields=id,account_id,adset_id,bid_amount,bid_type,campaign_id,configured_status,created_time,demolink_hash,display_sequence,effective_status,engagement_audience,is_autobid,last_updated_by_app_id,name,priority,source_ad_id,status,targeting,updated_time,audience_id,date_format,draft_adgroup_id,execution_options,include_demolink_hashes"

[ad_image]
cmd = "/v6.0/{act_id}/adimages -d limit=300 -d fields=id,name,width,height,url,account_id,permalink_url,original_width,original_height,status,created_time,updated_time"

[ad_rule]
cmd = "/v6.0/{act_id}/adrules_library -d limit=300 -d fields=id,account_id,name,status,updated_time"


[ad_video]
cmd = "/v6.0/{act_id}/advideos -d limit=300 -d fields=id,title,permalink_url,file_size,file_url,created_time,updated_time"
EOF
