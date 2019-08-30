## Generated from facebook/AdCampaignActivity.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCampaignActivity
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :auto_create_lookalike_new, :bool, 2
        optional :auto_create_lookalike_old, :bool, 3
        optional :bid_adjustments_spec_new, :string, 4
        optional :bid_adjustments_spec_old, :string, 5
        optional :bid_amount_new, :int64, 6
        optional :bid_amount_old, :int64, 7
        optional :bid_strategy_new, :string, 8
        optional :bid_strategy_old, :string, 9
        optional :bid_type_new, :string, 10
        optional :bid_type_old, :string, 11
        optional :billing_event_new, :string, 12
        optional :billing_event_old, :string, 13
        optional :brande_audience_id_new, :string, 14
        optional :brande_audience_id_old, :string, 15
        optional :created_time, Datetime, 16
        optional :daily_impressions_new, :int64, 17
        optional :daily_impressions_old, :int64, 18
        optional :dco_mode_new, :string, 19
        optional :dco_mode_old, :string, 20
        optional :delivery_behavior_new, :string, 21
        optional :delivery_behavior_old, :string, 22
        optional :destination_type_new, :string, 23
        optional :destination_type_old, :string, 24
        optional :event_time, Datetime, 25
        optional :event_type, :string, 26
        optional :invoicing_limit_new, :int64, 27
        optional :invoicing_limit_old, :int64, 28
        optional :name_new, :string, 29
        optional :name_old, :string, 30
        optional :optimization_goal_new, :string, 31
        optional :optimization_goal_old, :string, 32
        optional :pacing_type_new, :int64, 33
        optional :pacing_type_old, :int64, 34
        optional :run_status_new, :string, 35
        optional :run_status_old, :string, 36
        optional :start_time_new, Datetime, 37
        optional :start_time_old, Datetime, 38
        optional :stop_time_new, Datetime, 39
        optional :stop_time_old, Datetime, 40
        optional :updated_time_new, Datetime, 41
        optional :updated_time_old, Datetime, 42
      end
    end
    
    struct AdCampaignActivityArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCampaignActivity, 1
      end
    end
    end
  end
