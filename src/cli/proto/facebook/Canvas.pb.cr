## Generated from facebook/Canvas.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Canvas
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :background_color, :string, 2
        optional :canvas_link, :string, 3
        optional :is_hidden, :bool, 4
        optional :is_published, :bool, 5
        optional :name, :string, 6
        optional :update_time, :int64, 7
      end
    end
    
    struct CanvasArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Canvas, 1
      end
    end
    end
  end
