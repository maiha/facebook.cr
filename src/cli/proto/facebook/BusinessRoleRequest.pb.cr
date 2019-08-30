## Generated from facebook/BusinessRoleRequest.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessRoleRequest
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :created_time, Datetime, 2
        optional :email, :string, 3
        optional :expiration_time, Datetime, 4
        optional :expiry_time, Datetime, 5
        optional :finance_role, :string, 6
        optional :invite_link, :string, 7
        optional :ip_role, :string, 8
        optional :role, :string, 9
        optional :status, :string, 10
        optional :updated_time, Datetime, 11
      end
    end
    
    struct BusinessRoleRequestArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessRoleRequest, 1
      end
    end
    end
  end
