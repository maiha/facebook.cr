## Generated from facebook/CreditPartitionActionOptions.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CreditPartitionActionOptions
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct CreditPartitionActionOptionsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CreditPartitionActionOptions, 1
      end
    end
    end
  end
