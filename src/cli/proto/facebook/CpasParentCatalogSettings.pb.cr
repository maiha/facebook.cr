## Generated from facebook/CpasParentCatalogSettings.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CpasParentCatalogSettings
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        repeated :attribution_windows, :string, 2
        optional :default_currency, :string, 3
      end
    end
    
    struct CpasParentCatalogSettingsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CpasParentCatalogSettings, 1
      end
    end
    end
  end
