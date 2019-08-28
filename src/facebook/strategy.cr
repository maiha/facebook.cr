require "./strategy/*"

module Facebook::Strategy
  var strategy : Strategy::Base = Http.new

  # overrides to bind logger
  def strategy=(v : Strategy::Base)
    @strategy = v
    strategy.logger = logger
  end

  def execute(*args, **opts)
    req = request(*args, **opts)

    before_validate.each &.call(req)
    validate(req)

    before_execute.each &.call(req)
    http_res = execute(req)
  end

  def execute(req : Request) : Response
    res = strategy.execute(req)
    after_execute.each(&.call(req, res))
    return res
  end
end
