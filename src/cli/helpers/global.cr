module GlobalHelper
  protected var max_mem_error_reported : Bool = false

  protected def max_mem : String
    Pretty.process_info(skip_invalid: true).max.to_s
  rescue err
    # report error only once
    if !max_mem_error_reported?
      logger.warn err.to_s
      @max_mem_error_reported = true
    end
    return "---"
  end

  protected def pretty_dir(dir : String) : String
    absolute = Dir.current.to_s + "/"
    if dir.starts_with?(absolute)
      dir[absolute.size..-1]
    else
      dir
    end
  rescue
    dir
  end

  protected def colorize(msg : String, color)
    if config?.try(&.colorize?)
      msg.colorize(color)
    else
      msg
    end
  end

  # colorize methods
  # - check config.colorize
  # - handy shortcuts for colors
  {% for color in %w( green cyan yellow red ) %}
    protected def {{color.id}}(msg : String)
      colorize(msg, :{{color.id}})
    end
  {% end %}
end

abstract class Cmds::Cmd
  include GlobalHelper
end
