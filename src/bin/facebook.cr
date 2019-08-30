require "../cli/cli"

class Cli::Main
  include Opts

  CONFIG_FILE   = ".facebookrc"
  
  USAGE = <<-EOF
    usage: {{program}} [options] <commands>

    options:
    {{options}}

    commands:
      #{Cmds.names.inspect}
    EOF

  option config_path  : String?, "-K <config>", "Facebook config file (default: '~/.facebookrc')", nil

  option pass    : String?, "-a <access_token>", "Specify the access token for api account", nil
  option fields  : String?, "-f <fields>", "Select only these fields", nil
  option limit   : Int32?, "-l <limit>", "Select only first limit records", nil
  option format  : String?, "-F <format>", "Specify format", nil
  option dryrun  : Bool  , "-n", "Dryrun mode", false
  option verbose : Bool  , "-v", "Verbose output", false
  option version : Bool  , "--version", "Print the version and exit", false
  option help    : Bool  , "--help"   , "Output this help and exit" , false

  var cmd : Cmds::Cmd

  def run
    # setup
    config = load_config
    config.verbose    = verbose
    config.dryrun     = dryrun
#    config.fields     = fields.not_nil! if fields
    config.limit      = limit.not_nil!.to_i64 if limit
#    config.format     = format.not_nil! if format
    config.init!

    Facebook::Config.current = config

    # execute
    (self.cmd = Cmds[args.shift?.to_s].new).run(args)
  end

  private def load_config : Facebook::Config
    # When the user specifies the file name
    if path = config_path
      # The error is left to Config when the specified file doesn't exist
      return Facebook::Config.parse_file(path)
    end

    # Scan all parent directories up to "/"
    dir = File.real_path("./")
    while !dir.empty?
      if config = load_config?(dir)
        return config
      end
      break if dir == "/"
      dir = File.expand_path(File.join(dir, ".."))
    end      

    return load_config?("~/") || Facebook::Config.empty
  end

  private def load_config?(dir : String) : Facebook::Config?
    path = File.expand_path(File.join(dir, CONFIG_FILE))
    if File.exists?(path)
      Facebook::Config.parse_file(path)
    else
      nil
    end
  end

  private def pretty_tasks(cmd, prefix)
    array = cmd.class.usages.map{|help| help.split(/\s*#\s*/, 2)}
    Pretty.lines(array, delimiter: "  # ").chomp.split(/\n/).map{|line|
      "%s%s %s %s" % [prefix, PROGRAM_NAME, cmd.class.cmd_name, line.strip]
    }.join("\n")
  end

  def on_error(err)
    case err
    when Cmds::Finished
      exit 0
    when Facebook::Config::Error, TOML::Config::NotFound
      STDERR.puts "ERROR: #{err}".colorize(:red)
      exit 1
    when Cmds::ArgumentError
      STDERR.puts err.to_s.colorize(:red)
      STDERR.puts cmd.class.pretty_usage(prefix: " ")
      exit 2
    when Cmds::CommandNotFound
      STDERR.puts show_usage
      exit 3
    when Cmds::TaskNotFound
      task_names = cmd.class.task_names
      STDERR.puts "ERROR: Task Not Found (current: '#{err.name}')".colorize(:red)
      STDERR.puts "[possible tasks]"
      STDERR.puts "  %s" % task_names.join(", ")
      STDERR.puts
      STDERR.puts "[examples]"
      STDERR.puts pretty_tasks(cmd, prefix: "  ")
      exit 4
    when Facebook::Dryrun
      STDERR.puts err.inspect
      exit 10
    when Facebook::Denied, Facebook::Error
      STDERR.puts err.to_s.colorize(:red)
      exit 20
    when Errno
      STDERR.puts err.to_s.colorize(:red)
      exit 91
    when Cmds::Abort
      STDERR.puts Pretty.error(err).message.colorize(:red)
      cmd.logger.error "ERROR: #{err}"
      exit 100
    else
      STDERR.puts Pretty.error(err).message.colorize(:red)
      cmd.logger.error "ERROR: #{err} (#{err.class.name})"
      cmd.logger.error(err.inspect_with_backtrace)
      STDERR.puts Pretty.error(err).where.colorize(:red) # This may kill app
      exit 100
    end
  end
end

Cli::Main.run
