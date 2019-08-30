## Generated from facebook/Event.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Event
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :attending_count, :int64, 2
        optional :can_guests_invite, :bool, 3
        optional :category, :string, 4
        optional :declined_count, :int64, 5
        optional :description, :string, 6
        optional :discount_code_enabled, :bool, 7
        optional :end_time, :string, 8
        optional :guest_list_enabled, :bool, 9
        optional :interested_count, :int64, 10
        optional :is_canceled, :bool, 11
        optional :is_draft, :bool, 12
        optional :is_page_owned, :bool, 13
        optional :maybe_count, :int64, 14
        optional :name, :string, 15
        optional :noreply_count, :int64, 16
        optional :scheduled_publish_time, :string, 17
        optional :start_time, :string, 18
        optional :ticket_uri, :string, 19
        optional :ticket_uri_start_sales_time, :string, 20
        optional :ticketing_privacy_uri, :string, 21
        optional :ticketing_terms_uri, :string, 22
        optional :timezone, :string, 23
        optional :type, :string, 24
        optional :updated_time, Datetime, 25
      end
    end
    
    struct EventArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Event, 1
      end
    end
    end
  end
