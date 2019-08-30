## Generated from facebook/RichMediaElement.proto
require "protobuf"

module Facebook
  module Proto
    
    struct RichMediaElement
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :element_type, :string, 1
        optional :name, :string, 2
      end
    end
    
    struct RichMediaElementArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, RichMediaElement, 1
      end
    end
    end
  end
