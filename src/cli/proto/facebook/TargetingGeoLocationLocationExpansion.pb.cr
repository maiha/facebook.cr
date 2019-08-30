## Generated from facebook/TargetingGeoLocationLocationExpansion.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingGeoLocationLocationExpansion
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :allowed, :bool, 1
      end
    end
    
    struct TargetingGeoLocationLocationExpansionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingGeoLocationLocationExpansion, 1
      end
    end
    end
  end
