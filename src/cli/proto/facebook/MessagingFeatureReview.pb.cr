## Generated from facebook/MessagingFeatureReview.proto
require "protobuf"

module Facebook
  module Proto
    
    struct MessagingFeatureReview
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :feature, :string, 1
        optional :status, :string, 2
      end
    end
    
    struct MessagingFeatureReviewArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, MessagingFeatureReview, 1
      end
    end
    end
  end
