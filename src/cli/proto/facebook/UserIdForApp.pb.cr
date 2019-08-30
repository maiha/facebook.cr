## Generated from facebook/UserIdForApp.proto
require "protobuf"

module Facebook
  module Proto
    
    struct UserIdForApp
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
      end
    end
    
    struct UserIdForAppArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, UserIdForApp, 1
      end
    end
    end
  end
