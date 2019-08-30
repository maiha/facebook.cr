## Generated from facebook/PagePaymentOptions.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PagePaymentOptions
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :amex, :int64, 1
        optional :cash_only, :int64, 2
        optional :discover, :int64, 3
        optional :mastercard, :int64, 4
        optional :visa, :int64, 5
      end
    end
    
    struct PagePaymentOptionsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PagePaymentOptions, 1
      end
    end
    end
  end
