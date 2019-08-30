## Generated from facebook/ProductFeedRule.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductFeedRule
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :attribute, :string, 2
        optional :rule_type, :string, 3
      end
    end
    
    struct ProductFeedRuleArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductFeedRule, 1
      end
    end
    end
  end
