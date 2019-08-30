## Generated from facebook/ReachFrequencyCurveUpperConfidenceRange.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ReachFrequencyCurveUpperConfidenceRange
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :impression_upper, :int64, 1
        optional :num_points, :int64, 2
        repeated :reach, :int64, 3
        repeated :reach_upper, :int64, 4
        repeated :uniq_video_views_2s_upper, :int64, 5
        repeated :video_views_2s_upper, :int64, 6
      end
    end
    
    struct ReachFrequencyCurveUpperConfidenceRangeArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ReachFrequencyCurveUpperConfidenceRange, 1
      end
    end
    end
  end
