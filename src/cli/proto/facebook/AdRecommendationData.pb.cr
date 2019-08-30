## Generated from facebook/AdRecommendationData.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdRecommendationData
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :link, :string, 1
      end
    end
    
    struct AdRecommendationDataArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdRecommendationData, 1
      end
    end
    end
  end
