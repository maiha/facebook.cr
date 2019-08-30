## Generated from facebook/ReachFrequencyEstimatesCurve.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ReachFrequencyEstimatesCurve
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :budget, :int64, 1
        repeated :conversion, :int64, 2
        repeated :impression, :int64, 3
        optional :interpolated_reach, :double, 4
        optional :num_points, :int64, 5
        repeated :raw_impression, :int64, 6
        repeated :raw_reach, :int64, 7
        repeated :reach, :int64, 8
      end
    end
    
    struct ReachFrequencyEstimatesCurveArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ReachFrequencyEstimatesCurve, 1
      end
    end
    end
  end
