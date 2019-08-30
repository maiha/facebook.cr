## Generated from facebook/FoodDrinkOrder.proto
require "protobuf"

module Facebook
  module Proto
    
    struct FoodDrinkOrder
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :admin_note, :string, 2
        optional :creation_time, Datetime, 3
        optional :customer_name, :string, 4
        optional :customer_phone_number, :string, 5
        optional :note, :string, 6
        optional :state, :string, 7
        optional :update_time, Datetime, 8
      end
    end
    
    struct FoodDrinkOrderArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, FoodDrinkOrder, 1
      end
    end
    end
  end
