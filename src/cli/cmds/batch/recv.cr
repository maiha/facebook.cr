# Unlike other media APIs, the Facebook API can specify the fields to be acquired.
# However, the consumption of RateLimit also increases depending on the amount of
# fields to be acquired.
#
# Therefore, we fetch data by two phases.
#
# 1. fetch with the minimum fields to know all records.
# 2. fetch with all fields for the records that need to be updated.
#
# Here, we call the former as `meta` and the latter as `data`.

# ```
# cache/
#  + Facebook::Proto::Ad/
#     + data/
#        + act_12345/
#           + data/
#              + 00001.pb.gz # => [{id,name,...},...]
#        + act_12346/
# recv/
#  + 20190912/
#     + meta/
#        + Facebook::Proto::Ad/
#           + meta/
#              + done # => ""
#           + data/
#              + act_12345/
#                + meta/
#                   + job_value # => "(next url)"
#                + data/
#                   + 00001.pb.gz # => [{id,updated_time},...]
#              + act_12346/
#     + Facebook::Proto::Ad/
#        + meta/
#           + done # => ""
#           + job_value # => "act_12345"
#        + tmp/
#           + act_12345/
#              + meta/
#                + done # => "1"
#              + data/
#                 + 00001.pb.gz # => [{id,name,...},...]
#           + act_12346/
# ```
#
# [logic]
# 1. (meta)
#   1.1 check done
#   1.2 iterate job
#   1.3 call api
# 2. (data)
#   2.1 check done
#   2.2 iterate job
#   2.3 use (cache) when updated_time is older or equal
#   2.4 otherwise call api
#   2.5 write back to cache if done

# add methods to open class
class Cmds::BatchCmd
  CMD_PARAM_ACT_ID = "act_id"

  META_DONE         = "done"
  META_STATUS       = "status"
  META_RATE_LIMIT   = "rate_limit"
  META_CURRENT_URL  = "current_url"
  META_INFO         = "info"
  META_WARN         = "warn"
  META_ERROR        = "error"
  META_UNKONW_ERROR = "unknown_error"

  DEFAULT_REDUCE_DATA_MIN = 10

  private var last_rate_limit : Facebook::Response::RateLimit
  private var reduced_limit : Int32

  # cache config values
  private var pretty_rate_limit : Bool = config.batch_pretty_rate_limit?
  private var rate_limit_max : Int32   = config.batch_rate_limit_max
  private var skip_400 : Bool          = config.batch_skip_400?
  private var retry_attempts : Int32

  {% begin %}
  def recv_impl
    {% for klass in MODEL_CLASS_IDS %}
      {% name   = klass.stringify.underscore %}
      {% proto  = "Facebook::Proto::#{klass}".id %}
      {% parser = "Facebook::Response::Parser(#{proto})".id %}

      if enabled?({{proto}})
        # reset reduced limit for another api
        @reduced_limit = nil

        {% if name == "ad_account" %}
          recv_model({{name}}, house({{proto}}), {{parser}})
        {% else %}
          recv_meta({{name}}, house_meta({{proto}}), {{parser}})
          recv_data({{name}}, house_meta({{proto}}), house({{proto}}), cache({{proto}}), {{parser}})
        {% end %}
        flush_status_log
      end
    {% end %}
  end
  {% end %}

  private def load_act_ids! : Array(String)
    act_ids = house(Facebook::Proto::AdAccount).load.map{|pb|
      act_id = pb.id.to_s
      act_id =~ /^act_(\d+)$/ || raise "[BUG] act_id format error '#{pb.to_hash.inspect}'"
      act_id
    }.sort

    act_ids.any? ||
      raise Cmds::Halt.new("act_ids are empty")

    return act_ids
  end

  private def new_client(api : String? = nil)
    client = config.facebook_client
    client.api = api
    client.after_execute {|req, res| write_http_call(req, res)}
    return client
  end
end
