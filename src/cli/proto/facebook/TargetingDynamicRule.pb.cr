## Generated from facebook/TargetingDynamicRule.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingDynamicRule
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :_action_type, :string, 1
        optional :ad_group_id, :string, 2
        optional :campaign_group_id, :string, 3
        optional :campaign_id, :string, 4
        optional :impression_count, :string, 5
        optional :page_id, :string, 6
        optional :post, :string, 7
        optional :retention_seconds, :string, 8
      end
    end
    
    struct TargetingDynamicRuleArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingDynamicRule, 1
      end
    end
    end
  end
