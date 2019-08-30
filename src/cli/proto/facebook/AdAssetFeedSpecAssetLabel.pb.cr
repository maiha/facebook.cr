## Generated from facebook/AdAssetFeedSpecAssetLabel.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAssetFeedSpecAssetLabel
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
      end
    end
    
    struct AdAssetFeedSpecAssetLabelArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAssetFeedSpecAssetLabel, 1
      end
    end
    end
  end
