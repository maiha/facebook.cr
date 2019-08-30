## Generated from facebook/DynamicPostChildAttachment.proto
require "protobuf"

module Facebook
  module Proto
    
    struct DynamicPostChildAttachment
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :description, :string, 1
        optional :image_url, :string, 2
        optional :link, :string, 3
        optional :place_id, :string, 4
        optional :product_id, :string, 5
        optional :title, :string, 6
      end
    end
    
    struct DynamicPostChildAttachmentArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, DynamicPostChildAttachment, 1
      end
    end
    end
  end
