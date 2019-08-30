## Generated from facebook/AttributionSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AttributionSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :event_type, :string, 1
        optional :window_days, :int64, 2
      end
    end
    
    struct AttributionSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AttributionSpec, 1
      end
    end
    end
  end
