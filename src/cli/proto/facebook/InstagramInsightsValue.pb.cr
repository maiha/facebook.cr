## Generated from facebook/InstagramInsightsValue.proto
require "protobuf"

module Facebook
  module Proto
    
    struct InstagramInsightsValue
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :end_time, Datetime, 1
      end
    end
    
    struct InstagramInsightsValueArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, InstagramInsightsValue, 1
      end
    end
    end
  end
