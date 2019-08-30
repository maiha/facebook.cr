## Generated from facebook/NativeOfferDiscount.proto
require "protobuf"

module Facebook
  module Proto
    
    struct NativeOfferDiscount
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :currency, :string, 1
        optional :override, :string, 2
        optional :text, :string, 3
        optional :type, :string, 4
        optional :value1, :double, 5
        optional :value2, :double, 6
      end
    end
    
    struct NativeOfferDiscountArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, NativeOfferDiscount, 1
      end
    end
    end
  end
