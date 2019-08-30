## Generated from facebook/AdActivity.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdActivity
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :actor_id, :string, 1
        optional :actor_name, :string, 2
        optional :application_id, :string, 3
        optional :application_name, :string, 4
        optional :date_time_in_timezone, :string, 5
        optional :event_time, Datetime, 6
        optional :event_type, :string, 7
        optional :extra_data, :string, 8
        optional :object_id, :string, 9
        optional :object_name, :string, 10
        optional :object_type, :string, 11
        optional :translated_event_type, :string, 12
      end
    end
    
    struct AdActivityArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdActivity, 1
      end
    end
    end
  end
