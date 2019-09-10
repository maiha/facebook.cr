class Cmds::BatchCmd
  class LoopAction < Exception
    var done : String | Bool
    var info : String
    var warn : String
    var status : String
    var break_loop : Bool = false

    def initialize(@done = nil, @info = nil, @warn = nil, @status = nil, @break_loop = nil)
    end
  end

  private def loop_action!(*args, **opts)
    raise LoopAction.new(*args, **opts)
  end
end
