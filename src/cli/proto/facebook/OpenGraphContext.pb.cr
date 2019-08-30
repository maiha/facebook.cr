## Generated from facebook/OpenGraphContext.proto
require "protobuf"

module Facebook
  module Proto
    
    struct OpenGraphContext
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
      end
    end
    
    struct OpenGraphContextArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, OpenGraphContext, 1
      end
    end
    end
  end
