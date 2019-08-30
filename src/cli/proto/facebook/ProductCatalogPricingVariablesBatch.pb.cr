## Generated from facebook/ProductCatalogPricingVariablesBatch.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductCatalogPricingVariablesBatch
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :errors_total_count, :int64, 1
        optional :handle, :string, 2
        optional :status, :string, 3
      end
    end
    
    struct ProductCatalogPricingVariablesBatchArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductCatalogPricingVariablesBatch, 1
      end
    end
    end
  end
