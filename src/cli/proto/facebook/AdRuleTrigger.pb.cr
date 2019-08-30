## Generated from facebook/AdRuleTrigger.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdRuleTrigger
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :field, :string, 1
        optional :operator, :string, 2
        optional :type, :string, 3
      end
    end
    
    struct AdRuleTriggerArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdRuleTrigger, 1
      end
    end
    end
  end
