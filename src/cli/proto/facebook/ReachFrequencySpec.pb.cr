## Generated from facebook/ReachFrequencySpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ReachFrequencySpec
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :countries, :string, 1
        optional :global_io_max_campaign_duration, :int64, 2
      end
    end
    
    struct ReachFrequencySpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ReachFrequencySpec, 1
      end
    end
    end
  end
