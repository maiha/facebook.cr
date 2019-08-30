## Generated from facebook/ReadOnlyAnalyticsUserPropertyConfig.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ReadOnlyAnalyticsUserPropertyConfig
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        repeated :active_properties, :string, 2
      end
    end
    
    struct ReadOnlyAnalyticsUserPropertyConfigArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ReadOnlyAnalyticsUserPropertyConfig, 1
      end
    end
    end
  end
