## Generated from facebook/LeadGenQuestionOption.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LeadGenQuestionOption
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :key, :string, 1
        optional :value, :string, 2
      end
    end
    
    struct LeadGenQuestionOptionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LeadGenQuestionOption, 1
      end
    end
    end
  end
