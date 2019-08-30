## Generated from facebook/AdAsyncRequest.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAsyncRequest
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :created_time, Datetime, 2
        optional :scope_object_id, :string, 3
        optional :status, :string, 4
        optional :type, :string, 5
        optional :updated_time, Datetime, 6
      end
    end
    
    struct AdAsyncRequestArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAsyncRequest, 1
      end
    end
    end
  end
