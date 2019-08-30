## Generated from facebook/AdCustomizationRuleSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCustomizationRuleSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :caption, :string, 1
        optional :description, :string, 2
        optional :link, :string, 3
        optional :message, :string, 4
        optional :name, :string, 5
        optional :priority, :int64, 6
      end
    end
    
    struct AdCustomizationRuleSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCustomizationRuleSpec, 1
      end
    end
    end
  end
