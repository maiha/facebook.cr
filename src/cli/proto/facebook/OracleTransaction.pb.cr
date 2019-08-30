## Generated from facebook/OracleTransaction.proto
require "protobuf"

module Facebook
  module Proto
    
    struct OracleTransaction
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        repeated :ad_account_ids, :string, 2
        optional :amount, :string, 3
        optional :billing_period, :string, 4
        optional :cdn_download_uri, :string, 5
        optional :currency, :string, 6
        optional :download_uri, :string, 7
        optional :due_date, Datetime, 8
        optional :entity, :string, 9
        optional :invoice_date, Datetime, 10
        optional :invoice_id, :string, 11
        optional :invoice_type, :string, 12
        optional :liability_type, :string, 13
        optional :payment_status, :string, 14
        optional :payment_term, :string, 15
        optional :type, :string, 16
      end
    end
    
    struct OracleTransactionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, OracleTransaction, 1
      end
    end
    end
  end
