## Generated from facebook/AdCampaignPacedBidInfo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCampaignPacedBidInfo
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :bidding_status, :string, 1
      end
    end
    
    struct AdCampaignPacedBidInfoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCampaignPacedBidInfo, 1
      end
    end
    end
  end
