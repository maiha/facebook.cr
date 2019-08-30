## Generated from facebook/AdCreativePhotoData.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativePhotoData
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :branded_content_shared_to_sponsor_status, :string, 1
        optional :branded_content_sponsor_page_id, :string, 2
        optional :caption, :string, 3
        optional :image_hash, :string, 4
        optional :page_welcome_message, :string, 5
        optional :url, :string, 6
      end
    end
    
    struct AdCreativePhotoDataArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativePhotoData, 1
      end
    end
    end
  end
