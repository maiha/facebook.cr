## Generated from facebook/TargetingGeoLocationLocationCluster.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TargetingGeoLocationLocationCluster
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :key, :int64, 1
      end
    end
    
    struct TargetingGeoLocationLocationClusterArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TargetingGeoLocationLocationCluster, 1
      end
    end
    end
  end
