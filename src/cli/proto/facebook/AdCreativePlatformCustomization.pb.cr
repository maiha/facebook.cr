## Generated from facebook/AdCreativePlatformCustomization.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativePlatformCustomization
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct AdCreativePlatformCustomizationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativePlatformCustomization, 1
      end
    end
    end
  end
