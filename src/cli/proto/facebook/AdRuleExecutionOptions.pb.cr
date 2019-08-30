## Generated from facebook/AdRuleExecutionOptions.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdRuleExecutionOptions
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :field, :string, 1
        optional :operator, :string, 2
      end
    end
    
    struct AdRuleExecutionOptionsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdRuleExecutionOptions, 1
      end
    end
    end
  end
