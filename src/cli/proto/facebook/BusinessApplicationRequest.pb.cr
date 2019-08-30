## Generated from facebook/BusinessApplicationRequest.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessApplicationRequest
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
      end
    end
    
    struct BusinessApplicationRequestArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessApplicationRequest, 1
      end
    end
    end
  end
