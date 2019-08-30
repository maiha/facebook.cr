## Generated from facebook/BusinessOwnedObjectOnBehalfOfRequest.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessOwnedObjectOnBehalfOfRequest
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :business_owned_object, :string, 2
        optional :status, :string, 3
      end
    end
    
    struct BusinessOwnedObjectOnBehalfOfRequestArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessOwnedObjectOnBehalfOfRequest, 1
      end
    end
    end
  end
