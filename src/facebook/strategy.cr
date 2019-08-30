require "./strategy/*"

module Facebook::Strategy
  var strategy : Strategy::Base

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

    begin
      res = execute(req)
      return res
    ensure
      after_execute.each(&.call(req, res))
    end
  end

  def execute(req : Request) : Response
    strategy.execute(req)
  end
end
