## Generated from facebook/VideoGameShow.proto
require "protobuf"

module Facebook
  module Proto
    
    struct VideoGameShow
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :end_time, Datetime, 2
        optional :game_status, :string, 3
        optional :game_type, :string, 4
        optional :start_time, Datetime, 5
      end
    end
    
    struct VideoGameShowArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, VideoGameShow, 1
      end
    end
    end
  end
