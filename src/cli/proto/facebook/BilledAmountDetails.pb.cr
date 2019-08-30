## Generated from facebook/BilledAmountDetails.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BilledAmountDetails
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :currency, :string, 1
        optional :net_amount, :string, 2
        optional :tax_amount, :string, 3
        optional :total_amount, :string, 4
      end
    end
    
    struct BilledAmountDetailsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BilledAmountDetails, 1
      end
    end
    end
  end
