## Generated from facebook/AdCreativeInteractiveComponentsSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeInteractiveComponentsSpec
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct AdCreativeInteractiveComponentsSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeInteractiveComponentsSpec, 1
      end
    end
    end
  end
