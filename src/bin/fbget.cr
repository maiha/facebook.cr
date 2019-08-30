# ```console
# $ fbget /me
# $ fbget '/v4.0/me/adaccounts -d limit 10'
# ```

require "../facebook"
require "composite_logger"

def show_headers(res : Facebook::Response)
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

def show_body(res : Facebook::Response, verbose = false)
  puts Pretty.json(res.body, color: verbose)
rescue Facebook::Api::Error
  puts "N/A"
rescue
  puts res.body
end

def show(res : Facebook::Response, verbose = false)
  if verbose
    puts "%s %s %s" % [res.code, res.req.api.method, res.req.full_url]
    puts "----------------------------------------"
    show_headers(res)
    puts "----------------------------------------"
  end
  show_body(res, verbose)
end

def run(client, cmd : String, verbose = false)
  res = client.get(cmd)
  show(res, verbose: verbose)
rescue curl : Facebook::Dryrun
  puts curl.inspect
end

debug   = !! ARGV.delete("-d")
verbose = !! ARGV.delete("-v")
dryrun  = !! ARGV.delete("-n")
token   = ENV["FACEBOOK_ACCESS_TOKEN"]? || abort "missing token. try 'FACEBOOK_ACCESS_TOKEN=xxxxxx #{PROGRAM_NAME}'"
ARGV.any? || abort "no api commands. try '#{PROGRAM_NAME} /me'"

extra_opts = ARGV.select(&.starts_with?("-"))
extra_opts.empty? || abort "An unknown option was passed #{extra_opts.inspect}"

if debug
  logger = Logger.new(STDOUT)
  logger.level = "DEBUG"
end

client = Facebook::Client.new(auth: token, logger: logger)
client.dryrun! if dryrun

run(client, cmd: ARGV.join(" "), verbose: verbose)
