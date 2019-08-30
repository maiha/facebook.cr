## Generated from facebook/VideoList.proto
require "protobuf"

module Facebook
  module Proto
    
    struct VideoList
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :creation_time, Datetime, 2
        optional :description, :string, 3
        optional :last_modified, Datetime, 4
        optional :season_number, :int64, 5
        optional :thumbnail, :string, 6
        optional :title, :string, 7
        optional :videos_count, :int64, 8
      end
    end
    
    struct VideoListArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, VideoList, 1
      end
    end
    end
  end
