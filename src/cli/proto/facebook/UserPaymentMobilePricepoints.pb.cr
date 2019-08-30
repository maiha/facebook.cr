## Generated from facebook/UserPaymentMobilePricepoints.proto
require "protobuf"

module Facebook
  module Proto
    
    struct UserPaymentMobilePricepoints
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :mobile_country, :string, 1
        optional :phone_number_last4, :string, 2
        optional :user_currency, :string, 3
      end
    end
    
    struct UserPaymentMobilePricepointsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, UserPaymentMobilePricepoints, 1
      end
    end
    end
  end
