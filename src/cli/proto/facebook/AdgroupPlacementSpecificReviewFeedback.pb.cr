## Generated from facebook/AdgroupPlacementSpecificReviewFeedback.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdgroupPlacementSpecificReviewFeedback
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct AdgroupPlacementSpecificReviewFeedbackArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdgroupPlacementSpecificReviewFeedback, 1
      end
    end
    end
  end
