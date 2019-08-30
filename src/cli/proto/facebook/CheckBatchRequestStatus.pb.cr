## Generated from facebook/CheckBatchRequestStatus.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CheckBatchRequestStatus
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :errors_total_count, :int64, 1
        optional :handle, :string, 2
        repeated :ids_of_invalid_requests, :string, 3
        optional :status, :string, 4
        optional :warnings_total_count, :int64, 5
      end
    end
    
    struct CheckBatchRequestStatusArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CheckBatchRequestStatus, 1
      end
    end
    end
  end
