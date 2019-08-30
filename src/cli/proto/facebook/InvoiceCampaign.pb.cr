## Generated from facebook/InvoiceCampaign.proto
require "protobuf"

module Facebook
  module Proto
    
    struct InvoiceCampaign
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :ad_account_id, :string, 1
        optional :campaign_id, :string, 2
        optional :campaign_name, :string, 3
        optional :clicks, :int64, 4
        optional :conversions, :int64, 5
        optional :impressions, :int64, 6
        repeated :tags, :string, 7
      end
    end
    
    struct InvoiceCampaignArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, InvoiceCampaign, 1
      end
    end
    end
  end
