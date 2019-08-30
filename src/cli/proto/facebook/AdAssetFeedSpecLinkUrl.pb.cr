## Generated from facebook/AdAssetFeedSpecLinkUrl.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAssetFeedSpecLinkUrl
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :carousel_see_more_url, :string, 1
        optional :deeplink_url, :string, 2
        optional :display_url, :string, 3
        optional :url_tags, :string, 4
        optional :website_url, :string, 5
      end
    end
    
    struct AdAssetFeedSpecLinkUrlArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAssetFeedSpecLinkUrl, 1
      end
    end
    end
  end
