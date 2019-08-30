## Generated from facebook/AdsPixelStats.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdsPixelStats
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :count, :int64, 1
        optional :diagnostics_hourly_last_timestamp, Datetime, 2
        optional :event, :string, 3
        optional :value, :string, 4
      end
    end
    
    struct AdsPixelStatsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdsPixelStats, 1
      end
    end
    end
  end
