## Generated from facebook/PaymentPricepoints.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PaymentPricepoints
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct PaymentPricepointsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PaymentPricepoints, 1
      end
    end
    end
  end
