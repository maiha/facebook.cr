## Generated from facebook/AdgroupRelevanceScore.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdgroupRelevanceScore
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :negative_feedback, :string, 1
        optional :positive_feedback, :string, 2
        optional :score, :string, 3
        optional :status, :string, 4
      end
    end
    
    struct AdgroupRelevanceScoreArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdgroupRelevanceScore, 1
      end
    end
    end
  end
