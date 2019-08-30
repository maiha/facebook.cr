## Generated from facebook/HotelRoom.proto
require "protobuf"

module Facebook
  module Proto
    
    struct HotelRoom
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :base_price, :string, 2
        optional :currency, :string, 3
        optional :description, :string, 4
        repeated :images, :string, 5
        optional :margin_level, :string, 6
        optional :name, :string, 7
        optional :room_id, :string, 8
        optional :sale_price, :string, 9
        optional :url, :string, 10
      end
    end
    
    struct HotelRoomArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, HotelRoom, 1
      end
    end
    end
  end
