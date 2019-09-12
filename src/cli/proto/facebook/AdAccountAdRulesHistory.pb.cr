## Generated from facebook/AdAccountAdRulesHistory.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountAdRulesHistory
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :account_id, :string, 1
        optional :exception_code, :int64, 2
        optional :exception_message, :string, 3
        optional :is_manual, :bool, 4
        optional :rule_id, :int64, 5
        optional :timestamp, Datetime, 6
      end
    end
    
    struct AdAccountAdRulesHistoryArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountAdRulesHistory, 1
      end
    end
    end
  end
