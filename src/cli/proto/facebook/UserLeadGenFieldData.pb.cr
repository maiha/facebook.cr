## Generated from facebook/UserLeadGenFieldData.proto
require "protobuf"

module Facebook
  module Proto
    
    struct UserLeadGenFieldData
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        repeated :values, :string, 2
      end
    end
    
    struct UserLeadGenFieldDataArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, UserLeadGenFieldData, 1
      end
    end
    end
  end
