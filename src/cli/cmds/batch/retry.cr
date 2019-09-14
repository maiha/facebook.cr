class Cmds::BatchCmd
  class RetryError < Exception
    var wait : Time::Span = 1.second

    def initialize(err, @wait = nil)
      super(err)
    end

    def process!
      if wait.total_seconds > 0
        sleep(wait)
      end
    end
  end

  private def retriable?(err : Exception) : RetryError?
    case err.to_s
    when /curl_easy_perform/ # Curl::Easy::Error
      return try_retry(err)
    when /An unknown error/
      # @message="An unknown error occurred", @type=nil, @code=1
      # @message="An unknown error has occurred.", @type="OAuthException", @code=1
      return try_retry(err, wait: 3.seconds)
    else
      return nil
    end
  end        

  private def try_retry(err : Exception | String, wait = nil)
    if retry_attempts < config.batch_max_attempts
      self.retry_attempts += 1
      wait ||= (retry_attempts*3).seconds
      wait = [wait, 10.seconds].min
      return RetryError.new(err.to_s, wait: wait)
    else
      raise err
    end
  end
end
