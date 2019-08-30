## Generated from facebook/AdAccountUser.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountUser
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        repeated :tasks, :string, 3
      end
    end
    
    struct AdAccountUserArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountUser, 1
      end
    end
    end
  end
