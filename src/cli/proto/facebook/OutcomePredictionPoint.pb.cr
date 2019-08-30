## Generated from facebook/OutcomePredictionPoint.proto
require "protobuf"

module Facebook
  module Proto
    
    struct OutcomePredictionPoint
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :actions, :double, 1
        optional :impressions, :double, 2
        optional :reach, :double, 3
        optional :spend, :int64, 4
      end
    end
    
    struct OutcomePredictionPointArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, OutcomePredictionPoint, 1
      end
    end
    end
  end
