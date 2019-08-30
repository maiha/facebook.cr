## Generated from facebook/DayPart.proto
require "protobuf"

module Facebook
  module Proto
    
    struct DayPart
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :days, :int64, 1
        optional :end_minute, :int64, 2
        optional :start_minute, :int64, 3
        optional :timezone_type, :string, 4
      end
    end
    
    struct DayPartArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, DayPart, 1
      end
    end
    end
  end
