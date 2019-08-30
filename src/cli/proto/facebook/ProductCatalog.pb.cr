## Generated from facebook/ProductCatalog.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductCatalog
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :default_image_url, :string, 2
        repeated :fallback_image_url, :string, 3
        optional :feed_count, :int64, 4
        optional :name, :string, 5
        optional :product_count, :int64, 6
        optional :vertical, :string, 7
      end
    end
    
    struct ProductCatalogArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductCatalog, 1
      end
    end
    end
  end
