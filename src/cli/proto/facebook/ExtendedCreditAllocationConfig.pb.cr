## Generated from facebook/ExtendedCreditAllocationConfig.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ExtendedCreditAllocationConfig
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :liability_type, :string, 2
        optional :partition_type, :string, 3
        optional :request_status, :string, 4
        optional :send_bill_to, :string, 5
      end
    end
    
    struct ExtendedCreditAllocationConfigArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ExtendedCreditAllocationConfig, 1
      end
    end
    end
  end
