Cmds.command "api" do
  usage "# execute API directly"

  var client = config.facebook_client

  delegate verbose?, to: config

  def before
    self.logger = Logger.new(nil)

    if token = config.api_access_token?
      client.auth = Facebook::Auth::AccessToken.new(token)
    end
  end
  
  desc "me", "# get '/me'"
  task me do
    res = client.get("/me")
    show(res)
  end

  desc "adaccounts", "# get '/v22.0/me/adaccounts'"
  task adaccounts do
    limit = config.limit? || 10
    res = client.get("/v22.0/me/adaccounts -d limit=#{limit}")
    show(res)
  end

  desc "get '/v22.0/me/adaccounts -d fields=name,age -d limit=300'", "# get 'XXX' as is"
  task get, "XXX" do
    if limit = config.limit?
      res = client.get(arg1, {"limit" => limit.to_s})
    else
      res = client.get(arg1)
    end

    show(res)
  end

  private def show_headers(res : Facebook::Response)
    hash = res.headers.to_h
    lines = Array(Array(String)).new
    hash.each do |k,v|
      lines << [k.to_s, v.inspect]
    end
    puts Pretty.lines(lines, delimiter: " ").split(/\n/).map(&.gsub(/\s+$/,"")).join("\n")
  rescue Facebook::Api::Error
    puts "N/A"
  rescue err
    puts "!!!!!!!!!!! #{err} !!!!!!!!!!!!"
    puts res.header
  end

  private def show_body(res : Facebook::Response)
    puts Pretty.json(res.body, color: config.colorize)
  rescue Facebook::Api::Error
    puts "N/A"
  rescue
    puts res.body
  end

  private def show(res : Facebook::Response)
    if config.rawmode
      puts res.body
      return nil
    end

    if verbose?
      puts "%s %s %s" % [res.code, res.req.api.method, res.req.url]
      puts "----------------------------------------"
      show_headers(res)
      puts "----------------------------------------"
      p res.rate_limits
      puts "----------------------------------------"
    end
    show_body(res)
  end
end
