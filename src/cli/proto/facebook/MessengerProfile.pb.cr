## Generated from facebook/MessengerProfile.proto
require "protobuf"

module Facebook
  module Proto
    
    struct MessengerProfile
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :account_linking_url, :string, 1
        repeated :whitelisted_domains, :string, 2
      end
    end
    
    struct MessengerProfileArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, MessengerProfile, 1
      end
    end
    end
  end
