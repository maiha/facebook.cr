## Generated from facebook/LeadGenConditionalQuestionsGroupChoices.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LeadGenConditionalQuestionsGroupChoices
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :customized_token, :string, 1
        optional :value, :string, 2
      end
    end
    
    struct LeadGenConditionalQuestionsGroupChoicesArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LeadGenConditionalQuestionsGroupChoices, 1
      end
    end
    end
  end
