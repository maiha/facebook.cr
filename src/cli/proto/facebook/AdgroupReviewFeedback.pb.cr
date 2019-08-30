## Generated from facebook/AdgroupReviewFeedback.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdgroupReviewFeedback
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct AdgroupReviewFeedbackArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdgroupReviewFeedback, 1
      end
    end
    end
  end
