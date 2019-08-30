## Generated from facebook/ProductFeedSchedule.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductFeedSchedule
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :day_of_month, :int64, 1
        optional :day_of_week, :string, 2
        optional :hour, :int64, 3
        optional :interval, :string, 4
        optional :interval_count, :int64, 5
        optional :minute, :int64, 6
        optional :timezone, :string, 7
        optional :url, :string, 8
        optional :username, :string, 9
      end
    end
    
    struct ProductFeedScheduleArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductFeedSchedule, 1
      end
    end
    end
  end
