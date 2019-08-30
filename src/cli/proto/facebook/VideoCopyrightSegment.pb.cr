## Generated from facebook/VideoCopyrightSegment.proto
require "protobuf"

module Facebook
  module Proto
    
    struct VideoCopyrightSegment
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :duration_in_sec, :double, 1
        optional :media_type, :string, 2
        optional :start_time_in_sec, :double, 3
      end
    end
    
    struct VideoCopyrightSegmentArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, VideoCopyrightSegment, 1
      end
    end
    end
  end
