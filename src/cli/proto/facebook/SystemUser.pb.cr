## Generated from facebook/SystemUser.proto
require "protobuf"

module Facebook
  module Proto
    
    struct SystemUser
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :created_time, Datetime, 2
        optional :finance_permission, :string, 3
        optional :ip_permission, :string, 4
        optional :name, :string, 5
        optional :role, :string, 6
        optional :system_user_id, :int64, 7
      end
    end
    
    struct SystemUserArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, SystemUser, 1
      end
    end
    end
  end
