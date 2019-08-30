## Generated from facebook/AdRuleHistoryResultAction.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdRuleHistoryResultAction
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :action, :string, 1
        optional :field, :string, 2
        optional :new_value, :string, 3
        optional :old_value, :string, 4
      end
    end
    
    struct AdRuleHistoryResultActionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdRuleHistoryResultAction, 1
      end
    end
    end
  end
