## Generated from facebook/TargetingGeoLocationCity.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingGeoLocationCity
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :country, :string, 1
        optional :distance_unit, :string, 2
        optional :key, :string, 3
        optional :name, :string, 4
        optional :radius, :int64, 5
        optional :region_id, :string, 6
      end
    end
    
    struct TargetingGeoLocationCityArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingGeoLocationCity, 1
      end
    end
    end
  end
