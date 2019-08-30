## Generated from facebook/TargetingGeoLocationMarket.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingGeoLocationMarket
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :country, :string, 1
        optional :key, :string, 2
        optional :market_type, :string, 3
        optional :name, :string, 4
      end
    end
    
    struct TargetingGeoLocationMarketArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingGeoLocationMarket, 1
      end
    end
    end
  end
