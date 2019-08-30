## Generated from facebook/UserPaymentMethodsInfo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct UserPaymentMethodsInfo
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :account_id, :string, 1
        repeated :available_card_types, :string, 2
        repeated :available_payment_methods, :string, 3
        optional :country, :string, 4
        optional :currency, :string, 5
      end
    end
    
    struct UserPaymentMethodsInfoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, UserPaymentMethodsInfo, 1
      end
    end
    end
  end
