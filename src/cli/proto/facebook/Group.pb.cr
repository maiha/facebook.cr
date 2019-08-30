## Generated from facebook/Group.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Group
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :archived, :bool, 2
        optional :created_time, Datetime, 3
        optional :description, :string, 4
        optional :email, :string, 5
        optional :icon, :string, 6
        optional :link, :string, 7
        optional :member_count, :int64, 8
        optional :member_request_count, :int64, 9
        optional :name, :string, 10
        repeated :permissions, :string, 11
        optional :privacy, :string, 12
        optional :purpose, :string, 13
        optional :subdomain, :string, 14
        optional :updated_time, Datetime, 15
      end
    end
    
    struct GroupArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Group, 1
      end
    end
    end
  end
