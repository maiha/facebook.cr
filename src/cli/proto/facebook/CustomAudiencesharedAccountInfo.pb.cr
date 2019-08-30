## Generated from facebook/CustomAudiencesharedAccountInfo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CustomAudiencesharedAccountInfo
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :account_id, :string, 1
        optional :account_name, :string, 2
        optional :business_id, :string, 3
        optional :business_name, :string, 4
        optional :sharing_status, :string, 5
      end
    end
    
    struct CustomAudiencesharedAccountInfoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CustomAudiencesharedAccountInfo, 1
      end
    end
    end
  end
