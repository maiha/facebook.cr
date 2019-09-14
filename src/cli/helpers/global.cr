module GlobalHelper
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
