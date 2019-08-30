## Generated from facebook/ProductCatalogProductSetsBatch.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductCatalogProductSetsBatch
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :errors_total_count, :int64, 1
        optional :handle, :string, 2
        optional :status, :string, 3
      end
    end
    
    struct ProductCatalogProductSetsBatchArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductCatalogProductSetsBatch, 1
      end
    end
    end
  end
