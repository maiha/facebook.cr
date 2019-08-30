## Generated from facebook/AdCreativeStaticFallbackSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeStaticFallbackSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :description, :string, 1
        optional :image_hash, :string, 2
        optional :link, :string, 3
        optional :message, :string, 4
        optional :name, :string, 5
      end
    end
    
    struct AdCreativeStaticFallbackSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeStaticFallbackSpec, 1
      end
    end
    end
  end
