## Generated from facebook/PageThreadOwner.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageThreadOwner
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct PageThreadOwnerArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageThreadOwner, 1
      end
    end
    end
  end
