Cmds.command "api" do
  var client = config.facebook_client

  delegate verbose?, to: config

  def before
    self.logger = Logger.new(nil)
  end
  
  usage "me # get '/me'"
  task me do
    res = client.get("/me")
    show(res)
  end

  usage "adaccounts # get '/v4.0/me/adaccounts'"
  task adaccounts do
    limit = config.limit? || 10
    res = client.get("/v4.0/me/adaccounts -d limit=#{limit}")
    show(res)
  end

  usage "get XXX # get 'XXX' as is"
  task get, "XXX" do
    if limit = config.limit?
      res = client.get(arg1, {"limit" => limit.to_s})
    else
      res = client.get(arg1)
    end
    show(res)
  end

  usage "data XXX # call 'GET XXX', then extract data as json"
  task data, "XXX" do
    if limit = config.limit?
      res = client.get(arg1, {"limit" => limit.to_s})
    else
      res = client.get(arg1)
    end
    json = JSON::Parser.new(res.body).parse
    data = json["data"]? || abort "res[data] not found"
    puts data.to_json
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
    puts Pretty.json(res.body, color: config.colorize?)
  rescue Facebook::Api::Error
    puts "N/A"
  rescue
    puts res.body
  end

  private def show(res : Facebook::Response)
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
