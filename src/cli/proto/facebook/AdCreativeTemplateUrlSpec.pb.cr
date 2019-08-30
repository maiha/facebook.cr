## Generated from facebook/AdCreativeTemplateUrlSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeTemplateUrlSpec
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct AdCreativeTemplateUrlSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeTemplateUrlSpec, 1
      end
    end
    end
  end
