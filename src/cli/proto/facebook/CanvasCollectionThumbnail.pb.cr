## Generated from facebook/CanvasCollectionThumbnail.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CanvasCollectionThumbnail
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :element_child_index, :int64, 1
        optional :element_id, :string, 2
      end
    end
    
    struct CanvasCollectionThumbnailArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CanvasCollectionThumbnail, 1
      end
    end
    end
  end
