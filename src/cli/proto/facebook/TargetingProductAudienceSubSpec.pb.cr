## Generated from facebook/TargetingProductAudienceSubSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingProductAudienceSubSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :retention_seconds, :string, 1
        optional :rule, :string, 2
      end
    end
    
    struct TargetingProductAudienceSubSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingProductAudienceSubSpec, 1
      end
    end
    end
  end
