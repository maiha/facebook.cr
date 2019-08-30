## Generated from facebook/AdCampaignOptimizationEvent.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCampaignOptimizationEvent
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :custom_conversion_id, :string, 1
        optional :event_sequence, :int64, 2
        optional :event_type, :string, 3
      end
    end
    
    struct AdCampaignOptimizationEventArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCampaignOptimizationEvent, 1
      end
    end
    end
  end
