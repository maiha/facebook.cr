## Generated from facebook/TargetingGeoLocationPlace.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingGeoLocationPlace
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :country, :string, 1
        optional :distance_unit, :string, 2
        optional :key, :string, 3
        optional :latitude, :double, 4
        optional :longitude, :double, 5
        optional :name, :string, 6
        optional :primary_city_id, :int64, 7
        optional :radius, :double, 8
        optional :region_id, :int64, 9
      end
    end
    
    struct TargetingGeoLocationPlaceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingGeoLocationPlace, 1
      end
    end
    end
  end
