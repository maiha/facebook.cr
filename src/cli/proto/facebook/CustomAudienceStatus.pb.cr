## Generated from facebook/CustomAudienceStatus.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CustomAudienceStatus
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :code, :int64, 1
        optional :description, :string, 2
      end
    end
    
    struct CustomAudienceStatusArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CustomAudienceStatus, 1
      end
    end
    end
  end
