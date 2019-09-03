require "./error"
require "./paging"

class Facebook::Response
  class RateLimit
    # ```json
    # {
    #   "477506029096629": [
    #     {
    #       "type": "ads_management",
    #       "call_count": 36,
    #       "total_cputime": 64,
    #       "total_time": 101,
    #       "estimated_time_to_regain_access": 55
    #     }
    #   ]
    # }
    # ```
    JSON.mapping({
      type: String,
      call_count: Int32?,
      total_cputime: Int32?,
      total_time: Int32?,
      estimated_time_to_regain_access: Int32?,
    })

    def max_percent : Int32
      vals = [
        call_count, 
        total_cputime,
        total_time,
        estimated_time_to_regain_access,
      ].compact
      if vals.any?
        return vals.max || 0
      else
        return 0
      end
    end

    def throttled? : Bool
      max_percent >= 100
    end

    def self.parse(buf : String)
      Hash(String, Array(RateLimit)).from_json(buf)
    end
  end
end

