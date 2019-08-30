## Generated from facebook/TargetingProspectingAudience.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingProspectingAudience
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct TargetingProspectingAudienceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingProspectingAudience, 1
      end
    end
    end
  end
