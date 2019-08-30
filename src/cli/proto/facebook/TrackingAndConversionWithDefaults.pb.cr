## Generated from facebook/TrackingAndConversionWithDefaults.proto
require "protobuf"

module Facebook
  module Proto
    
    struct TrackingAndConversionWithDefaults
      include Protobuf::Message
      
      contract_of "proto2" do
      end
    end
    
    struct TrackingAndConversionWithDefaultsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, TrackingAndConversionWithDefaults, 1
      end
    end
    end
  end
