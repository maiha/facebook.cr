## Generated from facebook/AdSet.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdSet
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :asset_feed_id, :string, 3
        optional :bid_amount, :int64, 4
        optional :bid_strategy, :string, 5
        optional :billing_event, :string, 6
        optional :budget_remaining, :string, 7
        optional :campaign_id, :string, 8
        optional :configured_status, :string, 9
        optional :created_time, Datetime, 10
        repeated :creative_sequence, :string, 11
        optional :daily_budget, :string, 12
        optional :daily_min_spend_target, :string, 13
        optional :daily_spend_cap, :string, 14
        optional :destination_type, :string, 15
        optional :effective_status, :string, 16
        optional :end_time, Datetime, 17
        optional :full_funnel_exploration_mode, :string, 18
        optional :instagram_actor_id, :string, 19
        optional :is_dynamic_creative, :bool, 20
        optional :lifetime_budget, :string, 21
        optional :lifetime_imps, :int64, 22
        optional :lifetime_min_spend_target, :string, 23
        optional :lifetime_spend_cap, :string, 24
        optional :name, :string, 25
        optional :optimization_goal, :string, 26
        optional :optimization_sub_event, :string, 27
        repeated :pacing_type, :string, 28
        optional :recurring_budget_semantics, :bool, 29
        optional :review_feedback, :string, 30
        optional :rf_prediction_id, :string, 31
        optional :source_adset_id, :string, 32
        optional :start_time, Datetime, 33
        optional :status, :string, 34
        optional :targeting, Targeting, 35
        repeated :time_based_ad_rotation_id_blocks, Int64Array, 36
        repeated :time_based_ad_rotation_intervals, :int64, 37
        optional :updated_time, Datetime, 38
        optional :use_new_app_click, :bool, 39
        optional :daily_imps, :int64, 40
        optional :date_format, :string, 41
        repeated :execution_options, :string, 42
        optional :line_number, :int64, 43
        optional :rb_prediction_id, :string, 44
        optional :time_start, Datetime, 45
        optional :time_stop, Datetime, 46
        optional :topline_id, :string, 47
      end
    end
    
    struct AdSetArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdSet, 1
      end
    end
    end
  end
