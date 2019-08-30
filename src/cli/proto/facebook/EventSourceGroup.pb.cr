## Generated from facebook/EventSourceGroup.proto
require "protobuf"

module Facebook
  module Proto
    
    struct EventSourceGroup
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
      end
    end
    
    struct EventSourceGroupArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, EventSourceGroup, 1
      end
    end
    end
  end
