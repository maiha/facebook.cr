## Generated from facebook/ProductCatalogCategory.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductCatalogCategory
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :criteria_value, :string, 1
        optional :description, :string, 2
        optional :destination_uri, :string, 3
        optional :image_url, :string, 4
        optional :name, :string, 5
        optional :num_items, :int64, 6
      end
    end
    
    struct ProductCatalogCategoryArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductCatalogCategory, 1
      end
    end
    end
  end
