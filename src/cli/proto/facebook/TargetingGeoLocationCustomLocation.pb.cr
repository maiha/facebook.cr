## Generated from facebook/TargetingGeoLocationCustomLocation.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingGeoLocationCustomLocation
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :address_string, :string, 1
        optional :country, :string, 2
        optional :country_group, :string, 3
        optional :custom_type, :string, 4
        optional :distance_unit, :string, 5
        optional :key, :string, 6
        optional :latitude, :double, 7
        optional :longitude, :double, 8
        optional :max_population, :int64, 9
        optional :min_population, :int64, 10
        optional :name, :string, 11
        optional :primary_city_id, :int64, 12
        optional :radius, :double, 13
        optional :region_id, :int64, 14
      end
    end
    
    struct TargetingGeoLocationCustomLocationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingGeoLocationCustomLocation, 1
      end
    end
    end
  end
