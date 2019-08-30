## Generated from facebook/AdBidAdjustments.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdBidAdjustments
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :user_groups, :string, 1
      end
    end
    
    struct AdBidAdjustmentsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdBidAdjustments, 1
      end
    end
    end
  end
