## Generated from facebook/AdCampaignIssuesInfo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCampaignIssuesInfo
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :error_code, :int64, 1
        optional :error_message, :string, 2
        optional :error_summary, :string, 3
        optional :error_type, :string, 4
        optional :level, :string, 5
      end
    end
    
    struct AdCampaignIssuesInfoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCampaignIssuesInfo, 1
      end
    end
    end
  end
