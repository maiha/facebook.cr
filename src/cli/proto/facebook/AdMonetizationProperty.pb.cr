## Generated from facebook/AdMonetizationProperty.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdMonetizationProperty
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
      end
    end
    
    struct AdMonetizationPropertyArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdMonetizationProperty, 1
      end
    end
    end
  end
