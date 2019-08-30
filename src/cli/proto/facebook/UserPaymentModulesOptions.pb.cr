## Generated from facebook/UserPaymentModulesOptions.proto
require "protobuf"

module Facebook
  module Proto
    
    struct UserPaymentModulesOptions
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :account_id, :string, 1
        optional :country, :string, 2
        optional :currency, :string, 3
      end
    end
    
    struct UserPaymentModulesOptionsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, UserPaymentModulesOptions, 1
      end
    end
    end
  end
