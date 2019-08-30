## Generated from facebook/AdCreativeLinkDataAppLinkSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeLinkDataAppLinkSpec
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct AdCreativeLinkDataAppLinkSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeLinkDataAppLinkSpec, 1
      end
    end
    end
  end
