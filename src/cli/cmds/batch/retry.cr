class Cmds::BatchCmd
  class Retry
    var err : Exception
    var wait : Time::Span = 1.second

    def initialize(@err, @wait = nil)
    end

    def process!
      if wait.total_seconds > 0
        sleep(wait)
      end
    end
  end

  private def retriable?(err : Exception) : Retry?
    case err.to_s
    when /curl_easy_perform/ # Curl::Easy::Error
      return Retry.new(err)
    else
      return nil
    end
  end        
end
