# add methods to open class
class Cmds::BatchCmd
  var visited_urls = Set(String).new

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

  enum LoopType
    DONE
    NEXT
    WARN
    FAIL
  end

  class LoopAction < Exception
    var type     : LoopType = LoopType::NEXT
    var msg      : String
    var break_loop : Bool = false

    def initialize(@type, @msg, @break_loop = false)
    end

    def process!(house, logger, label)
      msg = "#{label} #{@msg}"
      case type
      when .done?
        house.commit
        house.meta[META_DONE] = "1"
      when .next?
        logger.info msg
        house.meta[META_INFO] = msg
      when .warn?
        logger.warn msg
        house.meta[META_WARN] = msg
      else
        raise "[BUG] unexpected loop type: #{type}"
      end
    end
  end

  private var last_rate_limit : Facebook::Response::RateLimit
  private var reduced_limit : Int32

  # cache config values
  private var pretty_rate_limit : Bool = config.batch_pretty_rate_limit?
  private var rate_limit_max : Int32   = config.batch_rate_limit_max
  private var skip_400 : Bool          = config.batch_skip_400?

  MODEL_CLASS_IDS = [] of String

  private macro api(klass)
    {% MODEL_CLASS_IDS << klass %}
  end

  # receive model, and store it in Protobuf::House
  private def recv_model(name, house, response_parser)
    hint  = "[recv] #{name}"
    count = house.count
    if count > 0
      logger.info "%s (skip: cached %d)" % [hint, count]
      return false
    end

    if get_cmd = config.api_cmd?(name)
      logger.debug "%s (cmd found: %s)" % [hint, get_cmd]
    else
      logger.warn "%s (skip: config:%s.cmd is nil)" % [hint, name]
      return false
    end

    paging_index = 0
    recv.start
    
    while true
      paging_index += 1
      label = "#{hint}##{paging_index}"
      
      if paging_index > paging_limit
        logger.warn "#{label}: reached max loop limit(#{paging_limit})"
        break
      end

      client = new_client
      if url = house.meta[META_CURRENT_URL]?
        client.authorized_url!(url)
      else
        client.api = get_cmd
      end

      client.before_execute {|req|
        url = req.url

        if visited_urls.includes?(url)
          raise "[BUG] %s: already visited: %s" % [label, url]
        end
      }

      #      res = retry(label, api) {
      api.start
      res = client.execute
      #      }
      api.stop
      mark_visited!(res.req.url)

      parser = response_parser.from_json(res.body)
      if error = parser.error
        house.meta[META_ERR] = error.inspect
        raise error.inspect
      end

      fetched = parser.to_a
      house.tmp(fetched, {
        # set paging next as current to resume
        META_CURRENT_URL => parser.paging.try(&.next),
      })

      logger.info "%s: %s (%s)" % [label, fetched.size, api.last]
      
      if url = house.meta[META_CURRENT_URL]?
        logger.debug "%s: paging found: next=%s" % [hint, url]
      else
        break
      end
    end

    recv.stop
    house.commit
    logger.info "%s: %d [%s]" % [hint, house.count, recv.last.to_s]
  end

  # call API for the model related account, and store it in Protobuf::House
  # 1. each act_id
  # 2. house.chdir(model + "tmp" + act_xxx)
  # 3. delegate to recv_model_accounted_one(act_id)
  private def recv_model_accounted(klass, name, house, response_parser)
    hint  = "[recv] #{name}"
    act_ids = house(Facebook::Proto::AdAccount).load.map{|pb|
      pb.id || raise "[BUG] %s: act_id is nil (%s)" % [hint, pb.to_hash.inspect]
    }.sort

    if act_ids.empty?
      logger.info "%s (skip: act_ids are empty [%s])" % [hint, "AdAccount"]
      return false
    end

    act_id_max_len = act_ids.map(&.size).max

    @reduced_limit = nil

    # 1. each act_id
    act_ids.each_with_index do |act_id, i|
      act_id =~ /^act_(\d+)$/ ||
        raise "[BUG] %s: act_id is unknown format (%s)" % [hint, act_id.inspect]
      hint = "[recv] %s(%s/%s)[%s]" % [name, i+1, act_ids.size, act_id]

      # 2. house.chdir(model + "tmp" + act_xxx)
      sub_house = house.chdir(File.join(today_dir, "Facebook::Proto::#{klass}", "tmp", act_id))
      # 3. delegate to recv_model_accounted_one(act_id)
      recv_model_accounted_one(klass, name, sub_house, response_parser, act_id, hint)
    end
  end
  
  # receive model, and store it in Protobuf::House
  private def recv_model_accounted_one(klass, name, house, response_parser, act_id, hint)
    # if done, nothing to do
    if house.meta[META_DONE]?
      logger.info "%s (skip: cached %d)" % [hint, house.count]
      return false
    end

    # if 400, nothing to do
    if house.meta[META_STATUS]? == "400" && skip_400
      logger.info "%s (skip: ERROR 400)" % [hint]
      return false
    end

    # validate: check config:cmd exists, otherwise returns with warning
    cmd = ParamsCmd.parse?(config.api_cmd?(name)) || (
      logger.warn "%s (skip: config:%s.cmd is nil)" % [hint, name]
      house.meta[META_WARN] = "cmd is nil"
      return false
    )
    logger.debug "%s (cmd found: %s)" % [hint, cmd]

    # validate: cmd params
    cmd.params.any? ||
      raise ArgumentError.new("%s: no params in cmd: %s" % [hint, cmd.to_s.inspect])

    # validate: now supports only 'ad_account' for parent
    cmd.params == [CMD_PARAM_ACT_ID] ||
      raise ArgumentError.new("%s: ParamsCmd now supports only %s" % [hint, CMD_PARAM_ACT_ID])

    ######################################################################
    ### Resume operation
    if suspended_url = house.resume?
      logger.info "%s found suspended job" % [hint]

    else
      client = new_client
      client.api = cmd.resolve({CMD_PARAM_ACT_ID => act_id})
      house.checkin(client.request.authorize!.url)
      logger.debug "%s cmd(%s: %s) => %s" % [hint, CMD_PARAM_ACT_ID, act_id, house.resume?.inspect]
    end
    
    loop_counter = 0
    recv.start

    while house.resume?
      loop_counter += 1
      label = "#{hint}##{loop_counter}"

      begin
        if loop_counter > paging_limit
          loop_break!("reached max loop limit(#{paging_limit})")
        end
        recv_loop_one(house, response_parser)
      rescue action : LoopAction
        action.process!(house, logger, label)
        break if action.break_loop
      rescue err
        logger.error("#{label} #{err}")
        raise err
      end
    end

    recv.stop

    limit = last_rate_limit?.try{|i| "#{i.max_pct}%"} || "---"
    logger.info "%s %s [%s] (limit: %s)" % [hint, house.count, recv.last.to_s, limit]

    return true

  rescue err
    house.meta[META_ERR] = err.to_s
    raise err
  end

  private def recv_loop_one(house, response_parser)
    self.last_rate_limit = nil

    client = new_client
    url = house.resume? || loop_done!
    url = ReduceData.update_limit(url, limit: reduced_limit?)
    client.authorized_url!(url)

    # validte url before execute
    client.before_execute {|req|
      url = req.url
      case url
      when /\s/
        raise "[BUG] url contains spaces: #{url}"
      when /\baccess_token=/
        visited_urls.includes?(url) &&
          raise "[BUG] already visited: #{url}"
      else
        raise "[BUG] no access_token: #{url}"
      end
    }

    client.after_execute {|req, res|
      mark_visited!(req.url)
    }

    api.start
    res = client.execute
    api.stop

    # write rate limit into meta
    rate_limit = res.rate_limit?
    house.meta[META_RATE_LIMIT] = (rate_limit ? Pretty.json(rate_limit.to_json) : nil)
    self.last_rate_limit = rate_limit

    # write state
    house.meta[META_STATUS] = res.code.to_s
    
    parser = response_parser.from_json(res.body)
    next_url = parser.paging.try(&.next)

    # tiny information for this loop
    this_achievement : String? = nil
    
    if res.client_error?
      # 4xx(client errors) are not recoverable in most cases
      msg = "[#{res.code}]"
      if error = parser.error
        msg = "%s %s" % [msg, error.inspect]
      end
      loop_break!(msg)
    end

    if error = parser.error
      # 5xx(server errors) may be recoverable. Check details.
      case error.type
      when .unknown_error?
        # stores into meta, then raises it
        house.meta[META_UNKONW_ERROR] = error.inspect
        raise error.inspect

      when .reduce_data?
        # simply gives up if the feature is not enabled
        config.batch_reduce_data? || raise error.inspect

        # try to reduce the amount of data
        min_limit   = config.batch_reduce_data_min? || DEFAULT_REDUCE_DATA_MIN
        current_url = house.resume? || raise "[BUG] missing current url"
        reduced_url = ReduceData.reduce_data(current_url, min_limit)
        house.checkin(reduced_url)

        limit1 = ReduceData.limit?(current_url)
        limit2 = ReduceData.limit?(reduced_url)
        self.reduced_limit = limit2
        loop_warn! "ReduceData(#{limit1}->#{limit2})"

      when .unhandled?
        # simply raises
        raise error.inspect
      else
        # I miss trait
        raise NotImplementedError.new("[BUG] missing implementation for: #{error.inspect}")
      end
    end

    res.success? || raise "[BUG] not success, but no errors found"
      
    fetched = parser.to_a
    house.tmp(fetched)
    this_achievement = "%s [%s]" % [fetched.size, api.last]
    
    if url = next_url
      house.checkin(url)
    else
      house.checkout
      loop_done!
    end

    # stop the loop if rate_limit exceeds our max limit
    if pct = rate_limit.try(&.max_pct)
      if pct > rate_limit_max
        loop_break!("skip due to rate_limit (#{pct})")
      end
      this_achievement = "#{this_achievement} (limit: #{pct}%)"
    end

    loop_next! this_achievement
  end

  private def loop_next!(msg)
    raise LoopAction.new(LoopType::NEXT, msg)
  end
  
  private def loop_warn!(msg)
    raise LoopAction.new(LoopType::WARN, msg)
  end
  
  private def loop_break!(msg)
    raise LoopAction.new(LoopType::WARN, msg, break_loop: true)
  end
  
  private def loop_done!(msg = "")
    raise LoopAction.new(LoopType::DONE, msg, break_loop: true)
  end
  
  private def mark_visited!(url : String)
    visited_urls << url
  end

  private def new_client
    client = config.facebook_client
    client.after_execute {|req, res| write_http_call(req, res)}
    return client
  end

  api AdAccount
  api AdSet
  api Campaign
  api Ad

  {% begin %}
  def recv_impl
    {% for klass in MODEL_CLASS_IDS %}
      {% proto = "Facebook::Proto::#{klass}".id %}
      {% name  = klass.stringify.underscore %}

      if enabled?({{proto}})
        {% if name == "ad_account" %}
          recv_model({{name}}, house({{proto}}), Facebook::Response::Parser({{proto}}))
        {% else %}
          recv_model_accounted({{klass.stringify}}, {{name}}, house({{proto}}), Facebook::Response::Parser({{proto}}))
        {% end %}
      end
    {% end %}
  end
  {% end %}
end
