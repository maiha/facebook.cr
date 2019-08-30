## Generated from facebook/AdCampaignGroupActivity.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCampaignGroupActivity
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :buying_type_new, :string, 2
        optional :buying_type_old, :string, 3
        optional :event_time, Datetime, 4
        optional :event_type, :string, 5
        optional :is_autobid_new, :bool, 6
        optional :is_autobid_old, :bool, 7
        optional :is_average_price_pacing_new, :bool, 8
        optional :is_average_price_pacing_old, :bool, 9
        optional :name_new, :string, 10
        optional :name_old, :string, 11
        optional :objective_new, :string, 12
        optional :objective_old, :string, 13
        optional :pacing_type, :int64, 14
        optional :run_status_new, :string, 15
        optional :run_status_old, :string, 16
        optional :spend_cap_new, :int64, 17
        optional :spend_cap_old, :int64, 18
        optional :time_created, Datetime, 19
        optional :time_updated_new, Datetime, 20
        optional :time_updated_old, Datetime, 21
      end
    end
    
    struct AdCampaignGroupActivityArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCampaignGroupActivity, 1
      end
    end
    end
  end
