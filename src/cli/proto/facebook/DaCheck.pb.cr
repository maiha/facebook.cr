## Generated from facebook/DaCheck.proto
require "protobuf"

module Facebook
  module Proto
    
    struct DaCheck
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :action_uri, :string, 1
        optional :description, :string, 2
        optional :key, :string, 3
        optional :result, :string, 4
        optional :title, :string, 5
        optional :user_message, :string, 6
      end
    end
    
    struct DaCheckArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, DaCheck, 1
      end
    end
    end
  end
