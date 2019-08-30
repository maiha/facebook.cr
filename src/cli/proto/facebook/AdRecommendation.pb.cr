## Generated from facebook/AdRecommendation.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdRecommendation
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :blame_field, :string, 1
        optional :code, :int64, 2
        optional :confidence, :string, 3
        optional :importance, :string, 4
        optional :message, :string, 5
        optional :title, :string, 6
      end
    end
    
    struct AdRecommendationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdRecommendation, 1
      end
    end
    end
  end
