## Generated from facebook/ChildEvent.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ChildEvent
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :end_time, :string, 2
        optional :start_time, :string, 3
        optional :ticket_uri, :string, 4
      end
    end
    
    struct ChildEventArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ChildEvent, 1
      end
    end
    end
  end
