## Generated from facebook/AdEntityTargetSpend.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdEntityTargetSpend
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :amount, :string, 1
        optional :has_error, :bool, 2
        optional :is_accurate, :bool, 3
        optional :is_prorated, :bool, 4
        optional :is_updating, :bool, 5
      end
    end
    
    struct AdEntityTargetSpendArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdEntityTargetSpend, 1
      end
    end
    end
  end
