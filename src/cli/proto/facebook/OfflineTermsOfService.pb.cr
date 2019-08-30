## Generated from facebook/OfflineTermsOfService.proto
require "protobuf"

module Facebook
  module Proto
    
    struct OfflineTermsOfService
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :accept_time, :int64, 2
      end
    end
    
    struct OfflineTermsOfServiceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, OfflineTermsOfService, 1
      end
    end
    end
  end
