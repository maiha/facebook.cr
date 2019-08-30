## Generated from facebook/TargetingGeoLocationRegion.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingGeoLocationRegion
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :country, :string, 1
        optional :key, :string, 2
        optional :name, :string, 3
      end
    end
    
    struct TargetingGeoLocationRegionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingGeoLocationRegion, 1
      end
    end
    end
  end
