## Generated from facebook/AdAssetFeedSpecCaption.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAssetFeedSpecCaption
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :text, :string, 1
        optional :url_tags, :string, 2
      end
    end
    
    struct AdAssetFeedSpecCaptionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAssetFeedSpecCaption, 1
      end
    end
    end
  end
