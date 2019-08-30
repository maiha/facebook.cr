## Generated from facebook/BusinessAgreement.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessAgreement
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :request_status, :string, 2
      end
    end
    
    struct BusinessAgreementArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessAgreement, 1
      end
    end
    end
  end
