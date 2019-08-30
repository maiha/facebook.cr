## Generated from facebook/AdAssetFeedSpecDescription.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAssetFeedSpecDescription
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :text, :string, 1
        optional :url_tags, :string, 2
      end
    end
    
    struct AdAssetFeedSpecDescriptionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAssetFeedSpecDescription, 1
      end
    end
    end
  end
