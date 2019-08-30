## Generated from facebook/AdAssetFeedSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAssetFeedSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :ad_formats, :string, 1
        repeated :call_to_action_types, :string, 2
        optional :optimization_type, :string, 3
      end
    end
    
    struct AdAssetFeedSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAssetFeedSpec, 1
      end
    end
    end
  end
