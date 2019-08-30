## Generated from facebook/AdRuleExecutionSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdRuleExecutionSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :execution_type, :string, 1
      end
    end
    
    struct AdRuleExecutionSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdRuleExecutionSpec, 1
      end
    end
    end
  end
