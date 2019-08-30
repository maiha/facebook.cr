## Generated from facebook/AdgroupActivity.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdgroupActivity
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :ad_creative_id_new, :string, 2
        optional :ad_creative_id_old, :string, 3
        optional :asset_feed_id_new, :string, 4
        optional :asset_feed_id_old, :string, 5
        optional :bid_amount_new, :int64, 6
        optional :bid_amount_old, :int64, 7
        optional :bid_type_new, :string, 8
        optional :bid_type_old, :string, 9
        optional :created_time, Datetime, 10
        optional :display_sequence_new, :int64, 11
        optional :display_sequence_old, :int64, 12
        optional :engagement_audience_new, :bool, 13
        optional :engagement_audience_old, :bool, 14
        optional :event_time, Datetime, 15
        optional :event_type, :string, 16
        optional :force_run_status_new, :bool, 17
        optional :force_run_status_old, :bool, 18
        optional :friendly_name_new, :string, 19
        optional :friendly_name_old, :string, 20
        optional :is_reviewer_admin_new, :bool, 21
        optional :is_reviewer_admin_old, :bool, 22
        optional :objective_new, :string, 23
        optional :objective_old, :string, 24
        optional :objective_source_new, :string, 25
        optional :objective_source_old, :string, 26
        optional :priority_new, :int64, 27
        optional :priority_old, :int64, 28
        optional :reason_new, :string, 29
        optional :reason_old, :string, 30
        optional :run_status_new, :string, 31
        optional :run_status_old, :string, 32
        optional :source_adgroup_id_new, :string, 33
        optional :source_adgroup_id_old, :string, 34
        optional :start_time_new, Datetime, 35
        optional :start_time_old, Datetime, 36
        optional :stop_time_new, Datetime, 37
        optional :stop_time_old, Datetime, 38
        optional :target_spec_id_new, :string, 39
        optional :target_spec_id_old, :string, 40
        repeated :tracking_pixel_ids_new, :string, 41
        repeated :tracking_pixel_ids_old, :string, 42
        optional :update_time_new, Datetime, 43
        optional :update_time_old, Datetime, 44
        repeated :view_tags_new, :string, 45
        repeated :view_tags_old, :string, 46
      end
    end
    
    struct AdgroupActivityArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdgroupActivity, 1
      end
    end
    end
  end
