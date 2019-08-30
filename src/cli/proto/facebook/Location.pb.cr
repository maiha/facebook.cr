## Generated from facebook/Location.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Location
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :city_id, :int64, 1
        optional :country, :string, 2
        optional :country_code, :string, 3
        optional :latitude, :double, 4
        optional :located_in, :string, 5
        optional :longitude, :double, 6
        optional :name, :string, 7
        optional :region_id, :int64, 8
        optional :state, :string, 9
        optional :street, :string, 10
        optional :zip, :string, 11
      end
    end
    
    struct LocationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Location, 1
      end
    end
    end
  end
