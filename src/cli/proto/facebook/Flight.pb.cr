## Generated from facebook/Flight.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Flight
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :currency, :string, 2
        optional :description, :string, 3
        optional :destination_airport, :string, 4
        optional :destination_city, :string, 5
        optional :flight_id, :string, 6
        repeated :images, :string, 7
        optional :oneway_currency, :string, 8
        optional :oneway_price, :string, 9
        optional :origin_airport, :string, 10
        optional :origin_city, :string, 11
        optional :price, :string, 12
        repeated :sanitized_images, :string, 13
        optional :url, :string, 14
      end
    end
    
    struct FlightArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Flight, 1
      end
    end
    end
  end
