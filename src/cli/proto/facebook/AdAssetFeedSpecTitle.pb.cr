## Generated from facebook/AdAssetFeedSpecTitle.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAssetFeedSpecTitle
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :text, :string, 1
        optional :url_tags, :string, 2
      end
    end
    
    struct AdAssetFeedSpecTitleArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAssetFeedSpecTitle, 1
      end
    end
    end
  end
