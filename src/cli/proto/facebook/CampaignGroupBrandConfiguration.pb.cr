## Generated from facebook/CampaignGroupBrandConfiguration.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CampaignGroupBrandConfiguration
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :brand_product_name, :string, 1
        optional :locale, :string, 2
        optional :vertical, :string, 3
      end
    end
    
    struct CampaignGroupBrandConfigurationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CampaignGroupBrandConfiguration, 1
      end
    end
    end
  end
