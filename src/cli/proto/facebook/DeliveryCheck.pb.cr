## Generated from facebook/DeliveryCheck.proto
require "protobuf"

module Facebook
  module Proto
    
    struct DeliveryCheck
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :check_name, :string, 1
        optional :description, :string, 2
        optional :summary, :string, 3
      end
    end
    
    struct DeliveryCheckArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, DeliveryCheck, 1
      end
    end
    end
  end
