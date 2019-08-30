## Generated from facebook/IterativeSplitTestConfig.proto
require "protobuf"

module Facebook
  module Proto
    
    struct IterativeSplitTestConfig
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :budget, :int64, 2
        optional :end_time, Datetime, 3
        optional :iterative_split_test_original_variant_id, :string, 4
        repeated :splits, :int64, 5
        optional :start_time, Datetime, 6
      end
    end
    
    struct IterativeSplitTestConfigArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, IterativeSplitTestConfig, 1
      end
    end
    end
  end
