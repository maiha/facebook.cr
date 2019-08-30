## Generated from facebook/AdCreativeLinkDataImageOverlaySpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeLinkDataImageOverlaySpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :custom_text_type, :string, 1
        optional :float_with_margin, :bool, 2
        optional :overlay_template, :string, 3
        optional :position, :string, 4
        optional :text_font, :string, 5
        repeated :text_template_tags, :string, 6
        optional :text_type, :string, 7
        optional :theme_color, :string, 8
      end
    end
    
    struct AdCreativeLinkDataImageOverlaySpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeLinkDataImageOverlaySpec, 1
      end
    end
    end
  end
