## Generated from facebook/ReachFrequencyDayPart.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ReachFrequencyDayPart
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :days, :int64, 1
        optional :end_minute, :int64, 2
        optional :start_minute, :int64, 3
      end
    end
    
    struct ReachFrequencyDayPartArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ReachFrequencyDayPart, 1
      end
    end
    end
  end
