class Cmds::BatchCmd
  module ReduceData
    extend self

    def limit?(current_url : String) : Int32?
      current_url.scan(/\blimit=(\d+)\b/) do
        return $1.to_i
      end
      return nil
    end

    def update_limit(url : String, limit : Int32?)
      if v = limit
        url.sub(/\blimit=(\d+)\b/) { "limit=#{v}"}
      else
        url
      end
    end

    def reduce_data(current_url : String, min_limit : Int32) : String
      reduced_url = current_url.sub(/\blimit=(\d+)\b/) {
        limit = $1.to_i
        next_limit = [limit / 2, min_limit].max

        if limit <= next_limit
          # already failed with min_limit
          raise "reached reduce_data_min_limit(#{min_limit}). Can't reduce any more."
        end

        # replace limit value
        "limit=#{next_limit}"
      }

      # check generated url
      if current_url == reduced_url
        raise "[BUG] Failed to build reduced url. (build same url)"
      end

      if [current_url, reduced_url].map(&.to_s.sub(/limit=\d+/, "")).uniq.size != 1
        raise "[BUG] Failed to build reduced url. (An unexpected field has been updated): [#{reduced_url.inspect}]"
      end

      return reduced_url
    end
  end
end
