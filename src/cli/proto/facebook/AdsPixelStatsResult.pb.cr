## Generated from facebook/AdsPixelStatsResult.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdsPixelStatsResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :aggregation, :string, 1
        optional :start_time, Datetime, 2
      end
    end
    
    struct AdsPixelStatsResultArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdsPixelStatsResult, 1
      end
    end
    end
  end
