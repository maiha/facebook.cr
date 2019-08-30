## Generated from facebook/UserLeadGenDisclaimerResponse.proto
require "protobuf"

module Facebook
  module Proto
    
    struct UserLeadGenDisclaimerResponse
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :checkbox_key, :string, 1
        optional :is_checked, :string, 2
      end
    end
    
    struct UserLeadGenDisclaimerResponseArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, UserLeadGenDisclaimerResponse, 1
      end
    end
    end
  end
