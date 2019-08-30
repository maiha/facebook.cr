## Generated from facebook/AgeRange.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AgeRange
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :max, :int64, 1
        optional :min, :int64, 2
      end
    end
    
    struct AgeRangeArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AgeRange, 1
      end
    end
    end
  end
