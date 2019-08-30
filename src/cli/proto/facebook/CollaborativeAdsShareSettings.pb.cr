## Generated from facebook/CollaborativeAdsShareSettings.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CollaborativeAdsShareSettings
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :product_catalog_proxy_id, :string, 2
        optional :utm_campaign, :string, 3
        optional :utm_medium, :string, 4
        optional :utm_source, :string, 5
      end
    end
    
    struct CollaborativeAdsShareSettingsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CollaborativeAdsShareSettings, 1
      end
    end
    end
  end
