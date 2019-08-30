## Generated from facebook/AdAccountDeliveryEstimate.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountDeliveryEstimate
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :estimate_dau, :int64, 1
        optional :estimate_mau, :int64, 2
        optional :estimate_ready, :bool, 3
      end
    end
    
    struct AdAccountDeliveryEstimateArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountDeliveryEstimate, 1
      end
    end
    end
  end
