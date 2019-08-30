## Generated from facebook/AdAssetFeedSpecGroupRule.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAssetFeedSpecGroupRule
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct AdAssetFeedSpecGroupRuleArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAssetFeedSpecGroupRule, 1
      end
    end
    end
  end
