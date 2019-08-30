## Generated from facebook/AppRequestFormerRecipient.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AppRequestFormerRecipient
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :recipient_id, :string, 2
      end
    end
    
    struct AppRequestFormerRecipientArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AppRequestFormerRecipient, 1
      end
    end
    end
  end
