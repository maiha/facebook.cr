class Cmds::BatchCmd
  enum LoopType
    DONE
    NEXT
    WARN
    FAIL
  end

  class LoopAction < Exception
    var type     : LoopType = LoopType::NEXT
    var msg      : String
    var break_loop : Bool = false

    def initialize(@type, @msg, @break_loop = false)
    end

    def process!(house, logger, label)
      msg = "#{label} #{@msg}"
      case type
      when .done?
        house.commit
        house.meta[META_DONE] = "1"
      when .next?
        logger.info msg
        house.meta[META_INFO] = msg
      when .warn?
        logger.warn msg
        house.meta[META_WARN] = msg
      else
        raise "[BUG] unexpected loop type: #{type}"
      end
    end
  end

  private def loop_next!(msg)
    raise LoopAction.new(LoopType::NEXT, msg)
  end
  
  private def loop_warn!(msg)
    raise LoopAction.new(LoopType::WARN, msg)
  end
  
  private def loop_break!(msg)
    raise LoopAction.new(LoopType::WARN, msg, break_loop: true)
  end
  
  private def loop_done!(msg = "")
    raise LoopAction.new(LoopType::DONE, msg, break_loop: true)
  end
end
