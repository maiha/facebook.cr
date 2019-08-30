## Generated from facebook/TargetingGeoLocation.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingGeoLocation
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :countries, :string, 1
        repeated :country_groups, :string, 2
        repeated :location_set_ids, :string, 3
        repeated :location_types, :string, 4
      end
    end
    
    struct TargetingGeoLocationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingGeoLocation, 1
      end
    end
    end
  end
