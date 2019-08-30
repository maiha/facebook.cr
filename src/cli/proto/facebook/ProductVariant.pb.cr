## Generated from facebook/ProductVariant.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductVariant
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :label, :string, 1
        repeated :options, :string, 2
        optional :product_field, :string, 3
      end
    end
    
    struct ProductVariantArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductVariant, 1
      end
    end
    end
  end
