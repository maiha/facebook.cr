## Generated from facebook/AdRuleHistory.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdRuleHistory
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :exception_code, :int64, 1
        optional :exception_message, :string, 2
        optional :is_manual, :bool, 3
        optional :timestamp, Datetime, 4
      end
    end
    
    struct AdRuleHistoryArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdRuleHistory, 1
      end
    end
    end
  end
