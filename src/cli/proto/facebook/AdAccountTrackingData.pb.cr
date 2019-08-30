## Generated from facebook/AdAccountTrackingData.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountTrackingData
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct AdAccountTrackingDataArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountTrackingData, 1
      end
    end
    end
  end
