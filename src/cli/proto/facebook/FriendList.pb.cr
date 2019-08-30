## Generated from facebook/FriendList.proto
require "protobuf"

module Facebook
  module Proto
    
    struct FriendList
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :list_type, :string, 2
        optional :name, :string, 3
        optional :owner, :string, 4
      end
    end
    
    struct FriendListArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, FriendList, 1
      end
    end
    end
  end
