## Generated from facebook/CanvasBodyElement.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CanvasBodyElement
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct CanvasBodyElementArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CanvasBodyElement, 1
      end
    end
    end
  end
