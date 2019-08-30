## Generated from facebook/IdName.proto
require "protobuf"

module Facebook
  module Proto
    
    struct IdName
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
      end
    end
    
    struct IdNameArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, IdName, 1
      end
    end
    end
  end
