## Generated from facebook/ReachFrequencyCurveLowerConfidenceRange.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ReachFrequencyCurveLowerConfidenceRange
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :impression_lower, :int64, 1
        optional :num_points, :int64, 2
        repeated :reach, :int64, 3
        repeated :reach_lower, :int64, 4
        repeated :uniq_video_views_2s_lower, :int64, 5
        repeated :video_views_2s_lower, :int64, 6
      end
    end
    
    struct ReachFrequencyCurveLowerConfidenceRangeArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ReachFrequencyCurveLowerConfidenceRange, 1
      end
    end
    end
  end
