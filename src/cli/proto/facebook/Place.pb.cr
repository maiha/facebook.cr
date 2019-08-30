## Generated from facebook/Place.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Place
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        optional :overall_rating, :double, 3
      end
    end
    
    struct PlaceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Place, 1
      end
    end
    end
  end
