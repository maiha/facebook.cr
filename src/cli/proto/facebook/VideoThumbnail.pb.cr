## Generated from facebook/VideoThumbnail.proto
require "protobuf"

module Facebook
  module Proto
    
    struct VideoThumbnail
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :height, :int64, 2
        optional :is_preferred, :bool, 3
        optional :name, :string, 4
        optional :scale, :double, 5
        optional :uri, :string, 6
        optional :width, :int64, 7
      end
    end
    
    struct VideoThumbnailArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, VideoThumbnail, 1
      end
    end
    end
  end
