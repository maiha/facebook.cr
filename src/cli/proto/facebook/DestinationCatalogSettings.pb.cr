## Generated from facebook/DestinationCatalogSettings.proto
require "protobuf"

module Facebook
  module Proto
    
    struct DestinationCatalogSettings
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :generate_items_from_pages, :bool, 2
      end
    end
    
    struct DestinationCatalogSettingsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, DestinationCatalogSettings, 1
      end
    end
    end
  end
