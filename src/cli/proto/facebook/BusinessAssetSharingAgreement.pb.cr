## Generated from facebook/BusinessAssetSharingAgreement.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessAssetSharingAgreement
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        repeated :relationship_type, :string, 2
        optional :request_status, :string, 3
        optional :request_type, :string, 4
      end
    end
    
    struct BusinessAssetSharingAgreementArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessAssetSharingAgreement, 1
      end
    end
    end
  end
