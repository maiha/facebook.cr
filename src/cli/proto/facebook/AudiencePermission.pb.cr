## Generated from facebook/AudiencePermission.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AudiencePermission
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :share_account_id, :string, 1
        optional :share_account_name, :string, 2
      end
    end
    
    struct AudiencePermissionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AudiencePermission, 1
      end
    end
    end
  end
