## Generated from facebook/AdCampaignFrequencyControlSpecs.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCampaignFrequencyControlSpecs
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :event, :string, 1
        optional :interval_days, :int64, 2
        optional :max_frequency, :int64, 3
      end
    end
    
    struct AdCampaignFrequencyControlSpecsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCampaignFrequencyControlSpecs, 1
      end
    end
    end
  end
