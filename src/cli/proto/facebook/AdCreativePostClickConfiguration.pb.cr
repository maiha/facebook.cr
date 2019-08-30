## Generated from facebook/AdCreativePostClickConfiguration.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativePostClickConfiguration
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :post_click_item_description, :string, 1
        optional :post_click_item_headline, :string, 2
      end
    end
    
    struct AdCreativePostClickConfigurationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativePostClickConfiguration, 1
      end
    end
    end
  end
