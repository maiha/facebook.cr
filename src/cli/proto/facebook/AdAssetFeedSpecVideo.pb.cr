## Generated from facebook/AdAssetFeedSpecVideo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAssetFeedSpecVideo
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :caption_ids, :string, 1
        optional :thumbnail_hash, :string, 2
        optional :thumbnail_url, :string, 3
        optional :url_tags, :string, 4
        optional :video_id, :string, 5
      end
    end
    
    struct AdAssetFeedSpecVideoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAssetFeedSpecVideo, 1
      end
    end
    end
  end
