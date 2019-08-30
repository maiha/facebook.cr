## Generated from facebook/ExternalEventSource.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ExternalEventSource
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        optional :source_type, :string, 3
      end
    end
    
    struct ExternalEventSourceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ExternalEventSource, 1
      end
    end
    end
  end
