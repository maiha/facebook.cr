## Generated from facebook/AdAccountReachEstimate.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountReachEstimate
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :account_id, :string, 1
        optional :estimate_ready, :bool, 2
        optional :users, :int64, 3
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
