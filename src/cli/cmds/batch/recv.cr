# add methods to open class
class Cmds::BatchCmd
  CMD_PARAM_ACT_ID = "act_id"

  META_DONE         = "done"
  META_STATUS       = "status"
  META_RATE_LIMIT   = "rate_limit"
  META_CURRENT_URL  = "current_url"
  META_INFO         = "info"
  META_WARN         = "warn"
  META_ERR          = "err"
  META_UNKONW_ERROR = "unknown_error"

  DEFAULT_REDUCE_DATA_MIN = 10

  private var last_rate_limit : Facebook::Response::RateLimit
  private var reduced_limit : Int32

  # cache config values
  private var pretty_rate_limit : Bool = config.batch_pretty_rate_limit?
  private var rate_limit_max : Int32   = config.batch_rate_limit_max
  private var skip_400 : Bool          = config.batch_skip_400?
  private var retry_attempts : Int32

  # call API for the model, and store it in Protobuf::House
  private def recv_model_standalone(klass_name, name, house, response_parser)
    hint = "[recv] #{name}"
    url  = url_builder(name)
    recv_model_impl(house, response_parser, url, hint)
  end
 
  # call API for the model related account, and store it in Protobuf::House
  # 1. each act_id
  # 2. house.chdir(model + "tmp" + act_xxx)
  # 3. delegate to recv_model_impl(act_id)
  private def recv_model_accounted(klass_name, name, house, response_parser)
    act_ids = house(Facebook::Proto::AdAccount).load.map{|pb|
      act_id = pb.id.to_s
      act_id =~ /^act_(\d+)$/ || raise "[BUG] act_id format error '#{pb.to_hash.inspect}'"
      act_id
    }.sort

    if act_ids.empty?
      logger.info "%s (skip: act_ids are empty [%s])" % [name, "AdAccount"]
      return false
    end

    @reduced_limit = nil

    # 1. each act_id
    act_ids.each_with_index do |act_id, i|
      hint = "[recv] %s(%s/%s)[%s]" % [name, i+1, act_ids.size, act_id]

      # 2. house.chdir(model + "tmp" + act_xxx)
      sub_house = house.chdir(File.join(today_dir, "Facebook::Proto::#{klass_name}", "tmp", act_id))

      # 3. delegate to recv_model_impl(act_id)
      url = url_builder(name, {CMD_PARAM_ACT_ID => act_id})
      recv_model_impl(sub_house, response_parser, url, hint)
    end
  end

  private def new_client(api : String? = nil)
    client = config.facebook_client
    client.api = api
    client.after_execute {|req, res| write_http_call(req, res)}
    return client
  end

  {% begin %}
  def recv_impl
    {% for klass in MODEL_CLASS_IDS %}

      {% name   = klass.stringify.underscore %}
      {% kname  = klass.stringify %}
      {% proto  = "Facebook::Proto::#{kname.id}".id %}
      {% house  = "house(#{proto})".id %}
      {% parser = "Facebook::Response::Parser(#{proto})".id %}

      if enabled?({{proto}})
        {% if name == "ad_account" %}
          recv_model_standalone({{kname}}, {{name}}, {{house}}, {{parser}})
        {% else %}
          recv_model_accounted({{kname}}, {{name}}, {{house}}, {{parser}})
        {% end %}
      end
    {% end %}
  end
  {% end %}
end
