## Generated from facebook/AdCampaignDeliveryStatsUnsupportedReasons.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCampaignDeliveryStatsUnsupportedReasons
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :reason_type, :string, 1
      end
    end
    
    struct AdCampaignDeliveryStatsUnsupportedReasonsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCampaignDeliveryStatsUnsupportedReasons, 1
      end
    end
    end
  end
