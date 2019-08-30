## Generated from facebook/PageRestaurantServices.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageRestaurantServices
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :catering, :bool, 1
        optional :delivery, :bool, 2
        optional :groups, :bool, 3
        optional :kids, :bool, 4
        optional :outdoor, :bool, 5
        optional :pickup, :bool, 6
        optional :reserve, :bool, 7
        optional :takeout, :bool, 8
        optional :waiter, :bool, 9
        optional :walkins, :bool, 10
      end
    end
    
    struct PageRestaurantServicesArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageRestaurantServices, 1
      end
    end
    end
  end
