## Generated from facebook/OffsitePixel.proto
require "protobuf"

module Facebook
  module Proto
    
    struct OffsitePixel
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :creator, :string, 2
        optional :js_pixel, :string, 3
        optional :last_firing_time, Datetime, 4
        optional :name, :string, 5
        optional :tag, :string, 6
      end
    end
    
    struct OffsitePixelArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, OffsitePixel, 1
      end
    end
    end
  end
