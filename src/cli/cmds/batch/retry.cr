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
      return try_retry(err)
    when /An unknown error occurred/
      # #<Facebook::Response::Error:0x7ff83d513300 @message="An unknown error occurred", @type=nil, @code=1, @fbtrace_id=nil>
      return try_retry(err)
    else
      return nil
    end
  end        

  private def try_retry(err)
    if retry_attempts < config.batch_max_attempts
      self.retry_attempts += 1
      return Retry.new(err)
    else
      raise err
    end
  end
end
