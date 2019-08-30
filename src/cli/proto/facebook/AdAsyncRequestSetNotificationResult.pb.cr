## Generated from facebook/AdAsyncRequestSetNotificationResult.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAsyncRequestSetNotificationResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :response, :string, 1
        optional :status, :string, 2
      end
    end
    
    struct AdAsyncRequestSetNotificationResultArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAsyncRequestSetNotificationResult, 1
      end
    end
    end
  end
