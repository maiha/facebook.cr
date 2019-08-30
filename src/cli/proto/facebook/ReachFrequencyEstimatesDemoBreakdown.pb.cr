## Generated from facebook/ReachFrequencyEstimatesDemoBreakdown.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ReachFrequencyEstimatesDemoBreakdown
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct ReachFrequencyEstimatesDemoBreakdownArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ReachFrequencyEstimatesDemoBreakdown, 1
      end
    end
    end
  end
