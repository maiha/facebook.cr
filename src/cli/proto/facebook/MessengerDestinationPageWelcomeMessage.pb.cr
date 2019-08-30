## Generated from facebook/MessengerDestinationPageWelcomeMessage.proto
require "protobuf"

module Facebook
  module Proto
    
    struct MessengerDestinationPageWelcomeMessage
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :page_welcome_message_body, :string, 2
        optional :page_welcome_message_type, :string, 3
        optional :template_name, :string, 4
        optional :time_created, Datetime, 5
        optional :time_last_used, Datetime, 6
      end
    end
    
    struct MessengerDestinationPageWelcomeMessageArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, MessengerDestinationPageWelcomeMessage, 1
      end
    end
    end
  end
