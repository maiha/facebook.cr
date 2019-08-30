## Generated from facebook/Recommendation.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Recommendation
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :created_time, Datetime, 1
        optional :has_rating, :bool, 2
        optional :has_review, :bool, 3
        optional :rating, :int64, 4
        optional :recommendation_type, :string, 5
        optional :review_text, :string, 6
      end
    end
    
    struct RecommendationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Recommendation, 1
      end
    end
    end
  end
