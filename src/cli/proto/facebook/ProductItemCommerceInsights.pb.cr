## Generated from facebook/ProductItemCommerceInsights.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductItemCommerceInsights
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :message_sends, :int64, 1
        optional :organic_impressions, :int64, 2
        optional :paid_impressions, :int64, 3
      end
    end
    
    struct ProductItemCommerceInsightsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductItemCommerceInsights, 1
      end
    end
    end
  end
