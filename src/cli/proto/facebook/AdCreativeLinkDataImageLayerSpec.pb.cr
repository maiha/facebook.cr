## Generated from facebook/AdCreativeLinkDataImageLayerSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeLinkDataImageLayerSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :blending_mode, :string, 1
        optional :frame_image_hash, :string, 2
        optional :frame_source, :string, 3
        optional :image_source, :string, 4
        optional :layer_type, :string, 5
        optional :opacity, :int64, 6
        optional :overlay_position, :string, 7
        optional :overlay_shape, :string, 8
        optional :scale, :int64, 9
        optional :shape_color, :string, 10
        optional :text_color, :string, 11
        optional :text_font, :string, 12
      end
    end
    
    struct AdCreativeLinkDataImageLayerSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeLinkDataImageLayerSpec, 1
      end
    end
    end
  end
