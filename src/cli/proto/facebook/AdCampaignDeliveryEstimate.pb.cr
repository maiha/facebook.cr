## Generated from facebook/AdCampaignDeliveryEstimate.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCampaignDeliveryEstimate
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :estimate_dau, :int64, 1
        optional :estimate_mau, :int64, 2
        optional :estimate_ready, :bool, 3
      end
    end
    
    struct AdCampaignDeliveryEstimateArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCampaignDeliveryEstimate, 1
      end
    end
    end
  end
