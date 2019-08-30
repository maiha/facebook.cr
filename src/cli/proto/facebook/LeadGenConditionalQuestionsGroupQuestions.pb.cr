## Generated from facebook/LeadGenConditionalQuestionsGroupQuestions.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LeadGenConditionalQuestionsGroupQuestions
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :field_key, :string, 1
        optional :input_type, :string, 2
        optional :name, :string, 3
      end
    end
    
    struct LeadGenConditionalQuestionsGroupQuestionsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LeadGenConditionalQuestionsGroupQuestions, 1
      end
    end
    end
  end
