## Generated from facebook/AdsOptimalDeliveryGrowthOpportunity.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdsOptimalDeliveryGrowthOpportunity
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :optimization_type, :string, 1
      end
    end
    
    struct AdsOptimalDeliveryGrowthOpportunityArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdsOptimalDeliveryGrowthOpportunity, 1
      end
    end
    end
  end
