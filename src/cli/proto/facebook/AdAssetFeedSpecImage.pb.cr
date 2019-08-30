## Generated from facebook/AdAssetFeedSpecImage.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAssetFeedSpecImage
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :hash, :string, 1
        optional :url, :string, 2
        optional :url_tags, :string, 3
      end
    end
    
    struct AdAssetFeedSpecImageArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAssetFeedSpecImage, 1
      end
    end
    end
  end
