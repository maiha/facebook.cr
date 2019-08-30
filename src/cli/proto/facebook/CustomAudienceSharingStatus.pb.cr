## Generated from facebook/CustomAudienceSharingStatus.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CustomAudienceSharingStatus
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :sharing_relationship_id, :int64, 1
        optional :status, :string, 2
      end
    end
    
    struct CustomAudienceSharingStatusArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CustomAudienceSharingStatus, 1
      end
    end
    end
  end
