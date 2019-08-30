## Generated from facebook/UserTaggableFriend.proto
require "protobuf"

module Facebook
  module Proto
    
    struct UserTaggableFriend
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :first_name, :string, 2
        optional :last_name, :string, 3
        optional :middle_name, :string, 4
        optional :name, :string, 5
      end
    end
    
    struct UserTaggableFriendArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, UserTaggableFriend, 1
      end
    end
    end
  end
