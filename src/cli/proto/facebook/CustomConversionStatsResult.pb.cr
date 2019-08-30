## Generated from facebook/CustomConversionStatsResult.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CustomConversionStatsResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :aggregation, :string, 1
        optional :timestamp, Datetime, 2
      end
    end
    
    struct CustomConversionStatsResultArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CustomConversionStatsResult, 1
      end
    end
    end
  end
