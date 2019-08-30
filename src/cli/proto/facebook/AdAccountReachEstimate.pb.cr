## Generated from facebook/AdAccountReachEstimate.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountReachEstimate
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :estimate_ready, :bool, 1
        optional :users, :int64, 2
      end
    end
    
    struct AdAccountReachEstimateArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountReachEstimate, 1
      end
    end
    end
  end
