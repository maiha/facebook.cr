## Generated from facebook/Currency.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Currency
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :currency_offset, :int64, 1
        optional :usd_exchange, :double, 2
        optional :usd_exchange_inverse, :double, 3
        optional :user_currency, :string, 4
      end
    end
    
    struct CurrencyArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Currency, 1
      end
    end
    end
  end
