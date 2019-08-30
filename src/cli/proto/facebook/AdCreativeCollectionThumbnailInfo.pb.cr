## Generated from facebook/AdCreativeCollectionThumbnailInfo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeCollectionThumbnailInfo
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :element_child_index, :int64, 1
        optional :element_id, :string, 2
      end
    end
    
    struct AdCreativeCollectionThumbnailInfoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeCollectionThumbnailInfo, 1
      end
    end
    end
  end
