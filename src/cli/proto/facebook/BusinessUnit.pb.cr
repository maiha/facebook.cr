## Generated from facebook/BusinessUnit.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessUnit
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :creation_time, Datetime, 2
        optional :name, :string, 3
      end
    end
    
    struct BusinessUnitArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessUnit, 1
      end
    end
    end
  end
