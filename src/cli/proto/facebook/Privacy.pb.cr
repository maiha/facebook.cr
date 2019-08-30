## Generated from facebook/Privacy.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Privacy
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :allow, :string, 1
        optional :deny, :string, 2
        optional :description, :string, 3
        optional :friends, :string, 4
        optional :networks, :string, 5
        optional :value, :string, 6
      end
    end
    
    struct PrivacyArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Privacy, 1
      end
    end
    end
  end
