## Generated from facebook/MessengerPlatformReferral.proto
require "protobuf"

module Facebook
  module Proto
    
    struct MessengerPlatformReferral
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :ad_id, :string, 2
        optional :ref, :string, 3
        optional :source, :string, 4
        optional :type, :string, 5
      end
    end
    
    struct MessengerPlatformReferralArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, MessengerPlatformReferral, 1
      end
    end
    end
  end
