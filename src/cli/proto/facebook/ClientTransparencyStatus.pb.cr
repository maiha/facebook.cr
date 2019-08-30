## Generated from facebook/ClientTransparencyStatus.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ClientTransparencyStatus
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :grace_period_expiration_date, Datetime, 1
        optional :has_owning_business, :bool, 2
        optional :is_satisfied, :bool, 3
      end
    end
    
    struct ClientTransparencyStatusArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ClientTransparencyStatus, 1
      end
    end
    end
  end
