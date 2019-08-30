## Generated from facebook/AdCreativeRecommenderSettings.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeRecommenderSettings
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :preferred_events, :string, 1
        optional :product_sales_channel, :string, 2
      end
    end
    
    struct AdCreativeRecommenderSettingsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeRecommenderSettings, 1
      end
    end
    end
  end
