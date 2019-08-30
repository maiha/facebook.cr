## Generated from facebook/ProductCatalogImageSettingsOperation.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductCatalogImageSettingsOperation
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :transformation_type, :string, 1
      end
    end
    
    struct ProductCatalogImageSettingsOperationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductCatalogImageSettingsOperation, 1
      end
    end
    end
  end
