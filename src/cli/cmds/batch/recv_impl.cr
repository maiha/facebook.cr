class Cmds::BatchCmd
  private def recv_impl(house, parser, account_id : String? = nil)
    self.last_rate_limit = nil

    client = new_client
    url = house.resume? || loop_action!(done: true)
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
      if res.try{|r| r.success? && r.client_error? }
        visited_urls << req.url
      end
    }

    api.start
    res = client.execute
    api.stop

    # write rate limit into meta
    rate_limit = res.rate_limit?
    house.meta[META_RATE_LIMIT] = (rate_limit ? Pretty.json(rate_limit.to_json) : nil)
    self.last_rate_limit = rate_limit

    # write status into meta
    house.meta[META_STATUS] = res.code.to_s

    parser = parser.from_json(res.body)
    next_url = parser.paging.try(&.next)

    # tiny information for this loop
    this_achievement : String? = nil
    
    if res.client_error?
      # 4xx(client errors) are not recoverable in most cases
      msg = "[#{res.code}]"
      if error = parser.error
        msg = "%s %s" % [msg, error.inspect]
      end
      loop_action!(done: "#{res.code} ERROR" , warn: msg)
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
        loop_action!(warn: "ReduceData(#{limit1}->#{limit2})", status: "reduced")

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
    if act_id = account_id
      fetched.each{|pb| pb.account_id = act_id}
    end
    house.tmp(fetched)
    this_achievement = "%s [%s]" % [fetched.size, api.last]
    
    if url = next_url
      house.checkin(url)
    else
      house.checkout
      loop_action!(done: true)
    end

    # stop the loop if rate_limit exceeds our max limit
    if pct = rate_limit.try(&.max_pct)
      if pct > rate_limit_max
        loop_action!(error: "skip due to rate_limit (#{pct})", status: "limited", break_loop: true)
      end
      this_achievement = "#{this_achievement} (limit: #{pct}%)"
    end

    loop_action!(info: this_achievement)
  end
end
