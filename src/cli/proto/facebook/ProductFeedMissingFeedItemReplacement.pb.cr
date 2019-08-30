## Generated from facebook/ProductFeedMissingFeedItemReplacement.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductFeedMissingFeedItemReplacement
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct ProductFeedMissingFeedItemReplacementArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductFeedMissingFeedItemReplacement, 1
      end
    end
    end
  end
