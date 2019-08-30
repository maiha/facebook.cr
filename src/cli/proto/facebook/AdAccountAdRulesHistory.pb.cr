## Generated from facebook/AdAccountAdRulesHistory.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountAdRulesHistory
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :exception_code, :int64, 1
        optional :exception_message, :string, 2
        optional :is_manual, :bool, 3
        optional :rule_id, :int64, 4
        optional :timestamp, Datetime, 5
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
