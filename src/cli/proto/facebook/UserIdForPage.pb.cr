## Generated from facebook/UserIdForPage.proto
require "protobuf"

module Facebook
  module Proto
    
    struct UserIdForPage
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
      end
    end
    
    struct UserIdForPageArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, UserIdForPage, 1
      end
    end
    end
  end
