## Generated from facebook/TargetingProductAudienceSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingProductAudienceSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :product_set_id, :string, 1
      end
    end
    
    struct TargetingProductAudienceSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingProductAudienceSpec, 1
      end
    end
    end
  end
