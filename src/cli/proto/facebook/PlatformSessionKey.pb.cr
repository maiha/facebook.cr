## Generated from facebook/PlatformSessionKey.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PlatformSessionKey
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
      end
    end
    
    struct PlatformSessionKeyArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PlatformSessionKey, 1
      end
    end
    end
  end
