## Generated from facebook/EventTour.proto
require "protobuf"

module Facebook
  module Proto
    
    struct EventTour
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :description, :string, 2
        optional :dominant_color, :string, 3
        optional :end_time, :string, 4
        optional :is_past, :bool, 5
        optional :last_event_timestamp, :int64, 6
        optional :name, :string, 7
        optional :num_events, :int64, 8
        optional :publishing_state, :string, 9
        optional :scheduled_publish_timestamp, :int64, 10
        optional :start_time, :string, 11
        optional :ticketing_uri, :string, 12
      end
    end
    
    struct EventTourArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, EventTour, 1
      end
    end
    end
  end
