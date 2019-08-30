## Generated from facebook/ReachFrequencyEstimatesPlacementBreakdown.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ReachFrequencyEstimatesPlacementBreakdown
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct ReachFrequencyEstimatesPlacementBreakdownArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ReachFrequencyEstimatesPlacementBreakdown, 1
      end
    end
    end
  end
