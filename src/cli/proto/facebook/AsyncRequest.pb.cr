## Generated from facebook/AsyncRequest.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AsyncRequest
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :int64, 1
        optional :account_id, :string, 2
        optional :result, :string, 3
        optional :status, :int64, 4
        optional :type, :int64, 5
      end
    end
    
    struct AsyncRequestArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AsyncRequest, 1
      end
    end
    end
  end
