## Generated from facebook/ProductCatalogImageSettings.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductCatalogImageSettings
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct ProductCatalogImageSettingsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductCatalogImageSettings, 1
      end
    end
    end
  end
