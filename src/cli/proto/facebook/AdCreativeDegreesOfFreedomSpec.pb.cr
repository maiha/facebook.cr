## Generated from facebook/AdCreativeDegreesOfFreedomSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeDegreesOfFreedomSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :degrees_of_freedom_type, :string, 1
      end
    end
    
    struct AdCreativeDegreesOfFreedomSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeDegreesOfFreedomSpec, 1
      end
    end
    end
  end
