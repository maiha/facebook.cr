## Generated from facebook/PageParking.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageParking
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :lot, :int64, 1
        optional :street, :int64, 2
        optional :valet, :int64, 3
      end
    end
    
    struct PageParkingArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageParking, 1
      end
    end
    end
  end
