## Generated from facebook/LeadGenQuestion.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LeadGenQuestion
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :conditional_questions_group_id, :string, 2
        optional :inline_context, :string, 3
        optional :key, :string, 4
        optional :label, :string, 5
        optional :type, :string, 6
      end
    end
    
    struct LeadGenQuestionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LeadGenQuestion, 1
      end
    end
    end
  end
