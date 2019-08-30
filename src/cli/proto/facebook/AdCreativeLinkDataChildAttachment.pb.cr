## Generated from facebook/AdCreativeLinkDataChildAttachment.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeLinkDataChildAttachment
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :caption, :string, 1
        optional :description, :string, 2
        optional :image_hash, :string, 3
        optional :link, :string, 4
        optional :name, :string, 5
        optional :picture, :string, 6
        optional :static_card, :bool, 7
        optional :video_id, :string, 8
      end
    end
    
    struct AdCreativeLinkDataChildAttachmentArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeLinkDataChildAttachment, 1
      end
    end
    end
  end
