module Facebook::Strategy
  class Dryrun < Base
    def execute(req : Request) : HTTP::Client::Response
      raise Facebook::Dryrun.new(req)
    end
  end
end
