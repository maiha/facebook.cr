## Generated from facebook/CustomAudiencePrefillState.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CustomAudiencePrefillState
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :description, :string, 1
        optional :num_added, :int64, 2
        optional :status, :string, 3
      end
    end
    
    struct CustomAudiencePrefillStateArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CustomAudiencePrefillState, 1
      end
    end
    end
  end
