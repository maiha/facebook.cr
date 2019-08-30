## Generated from facebook/AdRuleHistoryResult.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdRuleHistoryResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :object_id, :string, 1
        optional :object_type, :string, 2
      end
    end
    
    struct AdRuleHistoryResultArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdRuleHistoryResult, 1
      end
    end
    end
  end
