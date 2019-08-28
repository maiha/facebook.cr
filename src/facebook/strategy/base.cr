module Facebook::Strategy
  abstract class Base
    var logger : Logger = Logger.new(nil)
    abstract def execute(req : Request) : HTTP::Client::Response
  end
end
