## Generated from facebook/AdAssetFeedSpecBody.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAssetFeedSpecBody
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :text, :string, 1
        optional :url_tags, :string, 2
      end
    end
    
    struct AdAssetFeedSpecBodyArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAssetFeedSpecBody, 1
      end
    end
    end
  end
