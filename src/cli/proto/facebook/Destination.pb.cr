## Generated from facebook/Destination.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Destination
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :address, :string, 2
        optional :currency, :string, 3
        optional :description, :string, 4
        optional :destination_id, :string, 5
        repeated :images, :string, 6
        optional :name, :string, 7
        optional :price, :string, 8
        optional :price_change, :string, 9
        repeated :sanitized_images, :string, 10
        repeated :types, :string, 11
        optional :url, :string, 12
      end
    end
    
    struct DestinationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Destination, 1
      end
    end
    end
  end
