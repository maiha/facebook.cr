## Generated from facebook/TargetingGeoLocationPoliticalDistrict.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingGeoLocationPoliticalDistrict
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :country, :string, 1
        optional :key, :string, 2
        optional :name, :string, 3
        optional :political_district, :string, 4
      end
    end
    
    struct TargetingGeoLocationPoliticalDistrictArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingGeoLocationPoliticalDistrict, 1
      end
    end
    end
  end
