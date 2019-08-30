## Generated from facebook/SplitTestConfig.proto
require "protobuf"

module Facebook
  module Proto
    
    struct SplitTestConfig
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :budget, :int64, 2
        optional :early_winner_declaration_enabled, :bool, 3
        optional :end_time, Datetime, 4
        repeated :splits, :int64, 5
        optional :start_time, Datetime, 6
        optional :test_variable, :string, 7
      end
    end
    
    struct SplitTestConfigArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, SplitTestConfig, 1
      end
    end
    end
  end
