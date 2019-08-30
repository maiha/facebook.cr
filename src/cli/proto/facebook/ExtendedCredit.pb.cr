## Generated from facebook/ExtendedCredit.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ExtendedCredit
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :credit_type, :string, 2
        optional :is_access_revoked, :bool, 3
        optional :is_automated_experience, :bool, 4
        optional :last_payment_time, Datetime, 5
        optional :legal_entity_name, :string, 6
        optional :liable_biz_name, :string, 7
        optional :owner_business_name, :string, 8
        optional :partition_from, :string, 9
        optional :send_bill_to_biz_name, :string, 10
      end
    end
    
    struct ExtendedCreditArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ExtendedCredit, 1
      end
    end
    end
  end
