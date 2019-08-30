## Generated from facebook/BusinessAdAccountRequest.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessAdAccountRequest
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
      end
    end
    
    struct BusinessAdAccountRequestArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessAdAccountRequest, 1
      end
    end
    end
  end
