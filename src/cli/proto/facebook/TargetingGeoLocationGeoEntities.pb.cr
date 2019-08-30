## Generated from facebook/TargetingGeoLocationGeoEntities.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingGeoLocationGeoEntities
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :country, :string, 1
        optional :key, :string, 2
        optional :name, :string, 3
        optional :region_id, :string, 4
      end
    end
    
    struct TargetingGeoLocationGeoEntitiesArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingGeoLocationGeoEntities, 1
      end
    end
    end
  end
