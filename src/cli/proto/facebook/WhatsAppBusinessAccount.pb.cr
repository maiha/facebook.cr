## Generated from facebook/WhatsAppBusinessAccount.proto
require "protobuf"

module Facebook
  module Proto
    
    struct WhatsAppBusinessAccount
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :currency, :string, 2
        optional :eligible_for_sending_notifications, :bool, 3
        optional :ineligible_for_sending_notifications_reason, :string, 4
        optional :message_template_namespace, :string, 5
        optional :name, :string, 6
        optional :purchase_order_number, :string, 7
        optional :status, :string, 8
        optional :timezone_id, :string, 9
      end
    end
    
    struct WhatsAppBusinessAccountArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, WhatsAppBusinessAccount, 1
      end
    end
    end
  end
