require "../dryrun"

module Facebook::Strategy
  class Dryrun < Base
    def execute(req : Request) : Response
      raise Facebook::Dryrun.new(req)
    end
  end
end
