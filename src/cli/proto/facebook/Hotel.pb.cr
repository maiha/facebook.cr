## Generated from facebook/Hotel.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Hotel
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :address, :string, 2
        optional :brand, :string, 3
        optional :currency, :string, 4
        optional :description, :string, 5
        optional :guest_ratings, :string, 6
        optional :hotel_id, :string, 7
        repeated :images, :string, 8
        optional :lowest_base_price, :string, 9
        optional :loyalty_program, :string, 10
        optional :margin_level, :int64, 11
        optional :name, :string, 12
        optional :phone, :string, 13
        optional :sale_price, :string, 14
        repeated :sanitized_images, :string, 15
        optional :star_rating, :double, 16
        optional :url, :string, 17
        optional :base_price, :int64, 18
      end
    end
    
    struct HotelArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Hotel, 1
      end
    end
    end
  end
