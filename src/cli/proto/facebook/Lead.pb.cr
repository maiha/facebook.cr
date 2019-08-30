## Generated from facebook/Lead.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Lead
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :ad_id, :string, 2
        optional :ad_name, :string, 3
        optional :adset_id, :string, 4
        optional :adset_name, :string, 5
        optional :campaign_id, :string, 6
        optional :campaign_name, :string, 7
        optional :created_time, Datetime, 8
        optional :form_id, :string, 9
        optional :is_organic, :bool, 10
        optional :partner_name, :string, 11
        optional :platform, :string, 12
        optional :retailer_item_id, :string, 13
      end
    end
    
    struct LeadArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Lead, 1
      end
    end
    end
  end
