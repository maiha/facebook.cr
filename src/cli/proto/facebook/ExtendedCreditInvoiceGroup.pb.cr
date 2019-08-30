## Generated from facebook/ExtendedCreditInvoiceGroup.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ExtendedCreditInvoiceGroup
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :auto_enroll, :bool, 2
        optional :customer_po_number, :string, 3
        repeated :emails, :string, 4
        optional :name, :string, 5
      end
    end
    
    struct ExtendedCreditInvoiceGroupArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ExtendedCreditInvoiceGroup, 1
      end
    end
    end
  end
