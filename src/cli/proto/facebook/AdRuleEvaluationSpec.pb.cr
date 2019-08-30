## Generated from facebook/AdRuleEvaluationSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdRuleEvaluationSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :evaluation_type, :string, 1
      end
    end
    
    struct AdRuleEvaluationSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdRuleEvaluationSpec, 1
      end
    end
    end
  end
