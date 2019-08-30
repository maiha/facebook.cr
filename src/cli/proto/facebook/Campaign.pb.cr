## Generated from facebook/Campaign.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Campaign
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :bid_strategy, :string, 3
        optional :boosted_object_id, :string, 4
        optional :budget_rebalance_flag, :bool, 5
        optional :budget_remaining, :string, 6
        optional :buying_type, :string, 7
        optional :can_create_brand_lift_study, :bool, 8
        optional :can_use_spend_cap, :bool, 9
        optional :configured_status, :string, 10
        optional :created_time, Datetime, 11
        optional :daily_budget, :string, 12
        optional :effective_status, :string, 13
        optional :last_budget_toggling_time, Datetime, 14
        optional :lifetime_budget, :string, 15
        optional :name, :string, 16
        optional :objective, :string, 17
        repeated :pacing_type, :string, 18
        optional :source_campaign_id, :string, 19
        optional :spend_cap, :string, 20
        optional :start_time, Datetime, 21
        optional :status, :string, 22
        optional :stop_time, Datetime, 23
        optional :topline_id, :string, 24
        optional :updated_time, Datetime, 25
        repeated :execution_options, :string, 26
      end
    end
    
    struct CampaignArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Campaign, 1
      end
    end
    end
  end
