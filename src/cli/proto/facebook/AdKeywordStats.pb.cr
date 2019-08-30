## Generated from facebook/AdKeywordStats.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdKeywordStats
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :clicks, :int64, 2
        optional :cost_per_total_action, :double, 3
        optional :cost_per_unique_click, :double, 4
        optional :cpc, :double, 5
        optional :cpm, :double, 6
        optional :cpp, :double, 7
        optional :ctr, :double, 8
        optional :frequency, :double, 9
        optional :impressions, :int64, 10
        optional :name, :string, 11
        optional :reach, :int64, 12
        optional :spend, :double, 13
        optional :total_actions, :int64, 14
        optional :total_unique_actions, :int64, 15
        optional :unique_clicks, :int64, 16
        optional :unique_ctr, :double, 17
        optional :unique_impressions, :int64, 18
      end
    end
    
    struct AdKeywordStatsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdKeywordStats, 1
      end
    end
    end
  end
