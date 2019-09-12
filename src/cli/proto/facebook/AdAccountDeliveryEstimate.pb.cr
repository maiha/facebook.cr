## Generated from facebook/AdAccountDeliveryEstimate.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountDeliveryEstimate
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :account_id, :string, 1
        optional :estimate_dau, :int64, 2
        optional :estimate_mau, :int64, 3
        optional :estimate_ready, :bool, 4
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
