## Generated from facebook/CurrencyAmount.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CurrencyAmount
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :amount, :string, 1
        optional :amount_in_hundredths, :string, 2
        optional :currency, :string, 3
        optional :offsetted_amount, :string, 4
      end
    end
    
    struct CurrencyAmountArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CurrencyAmount, 1
      end
    end
    end
  end
