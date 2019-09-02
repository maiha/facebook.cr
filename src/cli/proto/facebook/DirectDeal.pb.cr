## Generated from facebook/DirectDeal.proto
require "protobuf"

module Facebook
  module Proto
    
    struct DirectDeal
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :adbreaks_enabled, :bool, 2
        optional :advertiser_lead_email, :string, 3
        optional :advertiser_page, :string, 4
        optional :cpe_amount, :int64, 5
        optional :cpe_currency, :string, 6
        optional :end_time, :int64, 7
        optional :lifetime_budget_amount, :int64, 8
        optional :lifetime_budget_currency, :string, 9
        optional :lifetime_impressions, :int64, 10
        optional :name, :string, 11
        repeated :pages, :string, 12
        repeated :placements, :string, 13
        optional :priced_by, :string, 14
        optional :publisher_name, :string, 15
        optional :review_requirement, :string, 16
        optional :sales_lead_email, :string, 17
        optional :start_time, :int64, 18
        optional :status, :string, 19
        optional :targeting, Targeting, 20
        repeated :third_party_ids, :string, 21
        optional :third_party_integrated_deal, :bool, 22
      end
    end
    
    struct DirectDealArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, DirectDeal, 1
      end
    end
    end
  end
