## Generated from facebook/CustomAudienceAdAccount.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CustomAudienceAdAccount
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
      end
    end
    
    struct CustomAudienceAdAccountArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CustomAudienceAdAccount, 1
      end
    end
    end
  end
