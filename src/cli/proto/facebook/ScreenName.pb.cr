## Generated from facebook/ScreenName.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ScreenName
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :service_name, :string, 1
        optional :service_type, :string, 2
        optional :value, :string, 3
      end
    end
    
    struct ScreenNameArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ScreenName, 1
      end
    end
    end
  end
