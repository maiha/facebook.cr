abstract class Cmds::Cmd
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
end
