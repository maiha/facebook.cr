# add methods to open class
class Cmds::BatchCmd
  MODEL_CLASS_IDS = [] of String

  private macro model(klass)
    {% MODEL_CLASS_IDS << klass %}
  end

  ### for tasks
  var api  = Pretty::Stopwatch.new # total time of API
  var db   = Pretty::Stopwatch.new # total time of DB
  var disk = Pretty::Stopwatch.new # total time of DISK
  var task = Pretty::Stopwatch.new # total time of TASK
  var recv = Pretty::Stopwatch.new # total time of RECV

  var target_date : Time           # logical date for the resources
  var target_ymd  : String         # logical ymd for the resources
  
  var work_dir     : String        # abs path
  var shared_dir   : String        # abs path
  var today_dir    : String        # abs path
  var executed_at  : Time
  var console      : CompositeLogger = CompositeLogger.new(Logger.new(STDERR))
  var batch_logger : CompositeLogger = CompositeLogger.new(Logger.new(nil))

  # oneline status for the current task
  var oneline_status : String

  def before
    self.paging_limit = config.api_paging_limit
    self.paging_width = config.api_paging_width
    self.executed_at  = Time.now

    self.work_dir   = File.expand_path(config.batch_work_dir).chomp("/")
    self.shared_dir = File.expand_path(config.batch_shared_dir).chomp("/")

    Dir.mkdir_p(work_dir)
    Dir.mkdir_p(shared_dir)

    setup_target_date!(arg1?)

    self.today_dir = "#{work_dir}/#{target_ymd}"

    if task_name? != "status"
      self.batch_logger = build_batch_logger("#{today_dir}/#{task_name}.log")
      logger.info "target time: %s" % target_ymd
    end

    task.start
  end

  def after
    task.stop
    # if `before` has not finished successfully, `today_dir` is not also set.
    return unless today_dir?

    if err = error?
      msg = Pretty.truncate(err.to_s.gsub(/\s+/, " "), size: 60)
      self.oneline_status = msg
      
      logger.error("dir: #{Dir.current}")
      logger.error(err.to_s)
    end
    batch_log(oneline_status) if oneline_status?

    if memory = logger.memory?
      if ! memory.to_s.empty?
        logger.error(memory.to_s)
      end
    end

    msg = "#{task}, API:#{api}, DB:#{db}, IO:#{disk}, MEM:#{Pretty.process_info.max}"
    if task_state.finished?
      logger.info "[task:done] #{msg}"
    else
      logger.error "[task:abort] #{msg}"
    end
  end

  private def setup_target_date!(v)
    self.target_date = Pretty.date(v.to_s)
    self.target_ymd  = target_date.to_s("%Y%m%d")
  rescue err
    if v
      hint = "but got #{v.inspect} (#{err})"
    else
      hint = "try `batch #{task_name} today` first"
    end
    raise Cmds::ArgumentError.new("`#{task_name}` needs <date> for arg1, #{hint}")
  end

  private def enabled?(name) : Bool
    # Facebook::Proto::AdAccount
    name = Pretty.underscore(name.to_s.split(/::/).last.to_s)
    config.enabled_recvs.includes?(name)
  end

  private def build_batch_logger(path : String) : CompositeLogger
    Dir.mkdir_p(File.dirname(path))
    logger = config.build_logger(path: path)
    CompositeLogger.new(logger, memory: Logger::Severity::ERROR)
  end

  def logger : CompositeLogger
    batch_logger? || console
  end

  # loggerのINFOレベルの出力を文字列として返す
  private def get_current_logger_info : String
    # syncされてないデータが来るので、色々と試行錯誤中
    STDOUT.flush
    STDERR.flush
    return logger.info_buffer.to_s
  end

  private def read_config_str!(key) : String
    v = config.str?(key).to_s
    abort "config(#{key})が未設定です" if v.empty?
    return v
  end

  private def batch_log(msg)
    if path = config.batch_log?
      File.open(path, "a+") do |f|
        f.puts msg
      end
    end
  end

  private def abort(msg)
    logger.error msg
    super(msg)
  end
  
end