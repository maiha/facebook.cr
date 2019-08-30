## Generated from facebook/AdCreativeLinkData.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeLinkData
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :additional_image_index, :int64, 1
        optional :attachment_style, :string, 2
        optional :branded_content_shared_to_sponsor_status, :string, 3
        optional :branded_content_sponsor_page_id, :string, 4
        optional :caption, :string, 5
        optional :description, :string, 6
        optional :event_id, :string, 7
        optional :force_single_link, :bool, 8
        optional :format_option, :string, 9
        optional :image_hash, :string, 10
        optional :link, :string, 11
        optional :message, :string, 12
        optional :multi_share_end_card, :bool, 13
        optional :multi_share_optimized, :bool, 14
        optional :name, :string, 15
        optional :offer_id, :string, 16
        optional :page_welcome_message, :string, 17
        optional :picture, :string, 18
        repeated :preferred_image_tags, :string, 19
        repeated :retailer_item_ids, :string, 20
        optional :show_multiple_images, :bool, 21
        optional :use_flexible_image_aspect_ratio, :bool, 22
      end
    end
    
    struct AdCreativeLinkDataArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeLinkData, 1
      end
    end
    end
  end
