## Generated from facebook/AssignedUser.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AssignedUser
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        optional :user_type, :string, 3
      end
    end
    
    struct AssignedUserArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AssignedUser, 1
      end
    end
    end
  end
