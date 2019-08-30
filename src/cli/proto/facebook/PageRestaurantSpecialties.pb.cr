## Generated from facebook/PageRestaurantSpecialties.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageRestaurantSpecialties
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :breakfast, :int64, 1
        optional :coffee, :int64, 2
        optional :dinner, :int64, 3
        optional :drinks, :int64, 4
        optional :lunch, :int64, 5
      end
    end
    
    struct PageRestaurantSpecialtiesArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageRestaurantSpecialties, 1
      end
    end
    end
  end
