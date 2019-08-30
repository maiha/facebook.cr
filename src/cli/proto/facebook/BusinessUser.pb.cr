## Generated from facebook/BusinessUser.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessUser
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :email, :string, 2
        optional :finance_permission, :string, 3
        optional :first_name, :string, 4
        optional :ip_permission, :string, 5
        optional :last_name, :string, 6
        optional :marked_for_removal, :bool, 7
        optional :name, :string, 8
        optional :pending_email, :string, 9
        optional :role, :string, 10
        optional :title, :string, 11
        optional :two_fac_status, :string, 12
      end
    end
    
    struct BusinessUserArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessUser, 1
      end
    end
    end
  end
