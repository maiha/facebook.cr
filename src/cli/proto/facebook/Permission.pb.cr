## Generated from facebook/Permission.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Permission
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :permission, :string, 1
        optional :status, :string, 2
      end
    end
    
    struct PermissionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Permission, 1
      end
    end
    end
  end
