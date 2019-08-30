## Generated from facebook/AdCreativePlaceData.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativePlaceData
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :address_string, :string, 1
        optional :label, :string, 2
        optional :latitude, :double, 3
        optional :location_source_id, :string, 4
        optional :longitude, :double, 5
        optional :type, :string, 6
      end
    end
    
    struct AdCreativePlaceDataArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativePlaceData, 1
      end
    end
    end
  end
