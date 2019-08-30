## Generated from facebook/UserInfluence.proto
require "protobuf"

module Facebook
  module Proto
    
    struct UserInfluence
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :trust, :string, 1
        optional :trust_code, :int64, 2
        optional :version, :int64, 3
      end
    end
    
    struct UserInfluenceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, UserInfluence, 1
      end
    end
    end
  end
