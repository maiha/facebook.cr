## Generated from facebook/AdCampaignBidConstraint.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCampaignBidConstraint
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :roas_average_floor, :int64, 1
      end
    end
    
    struct AdCampaignBidConstraintArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCampaignBidConstraint, 1
      end
    end
    end
  end
