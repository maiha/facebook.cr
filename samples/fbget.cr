# ```console
# $ fbget /me
# $ fbget /v4.0/me/adaccounts -d limit 10
# ```

require "../src/facebook"
require "pretty"

def show_headers(res : Facebook::Response)
  hash = res.headers.to_h
  lines = Array(Array(String)).new
  hash.each do |k,v|
    lines << [k.to_s, v.inspect]
  end
  puts Pretty.lines(lines, delimiter: " ").split(/\n/).map(&.gsub(/\s+$/,"")).join("\n")
rescue Facebook::Api::Error
  puts "N/A"
end

def show_body(res : Facebook::Response, verbose = false)
  puts Pretty.json(res.body, color: verbose)
rescue Facebook::Api::Error
  puts "N/A"
rescue
  puts res.body
end

def show(res : Facebook::Response, verbose = false)
  if verbose || !res.success? 
    puts "%s %s %s" % [res.code, res.req.api.method, res.req.full_url]
    puts "----------------------------------------"
    show_headers(res)
    puts "----------------------------------------"
  end
  show_body(res, verbose)
end

def run(client, verbose = false)
  res = client.execute
  show(res, verbose: verbose)
rescue curl : Facebook::Dryrun
  puts curl.inspect
end

verbose = !! ARGV.delete("-v")
dryrun  = !! ARGV.delete("-n")
token   = ENV["FACEBOOK_ACCESS_TOKEN"]? || abort "missing token. try 'FACEBOOK_ACCESS_TOKEN=xxxxxx #{PROGRAM_NAME}'"
ARGV.any? || abort "no api commands. try '#{PROGRAM_NAME} /me'"

client = Facebook::Client.new
client.auth = token
client.api  = ARGV.join(" ")
#client.host = "http://localhost:7777"
client.dryrun! if dryrun

run(client, verbose: verbose)
