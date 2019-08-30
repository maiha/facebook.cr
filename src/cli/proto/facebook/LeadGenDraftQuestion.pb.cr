## Generated from facebook/LeadGenDraftQuestion.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LeadGenDraftQuestion
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :conditional_questions_group_id, :string, 1
        optional :inline_context, :string, 2
        optional :key, :string, 3
        optional :label, :string, 4
        optional :type, :string, 5
      end
    end
    
    struct LeadGenDraftQuestionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LeadGenDraftQuestion, 1
      end
    end
    end
  end
