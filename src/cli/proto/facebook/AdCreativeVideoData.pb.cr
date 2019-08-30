## Generated from facebook/AdCreativeVideoData.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeVideoData
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :additional_image_index, :int64, 1
        optional :branded_content_shared_to_sponsor_status, :string, 2
        optional :branded_content_sponsor_page_id, :string, 3
        optional :image_hash, :string, 4
        optional :image_url, :string, 5
        optional :link_description, :string, 6
        optional :message, :string, 7
        optional :offer_id, :string, 8
        optional :page_welcome_message, :string, 9
        repeated :retailer_item_ids, :string, 10
        optional :title, :string, 11
        optional :video_id, :string, 12
      end
    end
    
    struct AdCreativeVideoDataArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeVideoData, 1
      end
    end
    end
  end
