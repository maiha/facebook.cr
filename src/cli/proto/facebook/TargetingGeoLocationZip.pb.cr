## Generated from facebook/TargetingGeoLocationZip.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingGeoLocationZip
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :country, :string, 1
        optional :key, :string, 2
        optional :name, :string, 3
        optional :primary_city_id, :int64, 4
        optional :region_id, :int64, 5
      end
    end
    
    struct TargetingGeoLocationZipArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingGeoLocationZip, 1
      end
    end
    end
  end
