## Generated from facebook/BusinessPageRequest.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessPageRequest
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
      end
    end
    
    struct BusinessPageRequestArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessPageRequest, 1
      end
    end
    end
  end
