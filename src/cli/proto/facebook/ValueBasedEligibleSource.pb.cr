## Generated from facebook/ValueBasedEligibleSource.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ValueBasedEligibleSource
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :title, :string, 2
        optional :type, :string, 3
      end
    end
    
    struct ValueBasedEligibleSourceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ValueBasedEligibleSource, 1
      end
    end
    end
  end
