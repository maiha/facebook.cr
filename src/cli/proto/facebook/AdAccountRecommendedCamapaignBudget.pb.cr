## Generated from facebook/AdAccountRecommendedCamapaignBudget.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountRecommendedCamapaignBudget
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :daily, :string, 1
        optional :lifetime, :string, 2
        optional :objective, :string, 3
      end
    end
    
    struct AdAccountRecommendedCamapaignBudgetArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountRecommendedCamapaignBudget, 1
      end
    end
    end
  end
