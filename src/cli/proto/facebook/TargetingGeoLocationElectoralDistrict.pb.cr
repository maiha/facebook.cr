## Generated from facebook/TargetingGeoLocationElectoralDistrict.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingGeoLocationElectoralDistrict
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :country, :string, 1
        optional :electoral_district, :string, 2
        optional :key, :string, 3
        optional :name, :string, 4
      end
    end
    
    struct TargetingGeoLocationElectoralDistrictArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingGeoLocationElectoralDistrict, 1
      end
    end
    end
  end
