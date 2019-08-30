## Generated from facebook/WhatsAppBusinessProfile.proto
require "protobuf"

module Facebook
  module Proto
    
    struct WhatsAppBusinessProfile
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :verified_name, :string, 2
      end
    end
    
    struct WhatsAppBusinessProfileArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, WhatsAppBusinessProfile, 1
      end
    end
    end
  end
