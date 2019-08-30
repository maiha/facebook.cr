## Generated from facebook/Album.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Album
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :backdated_time, Datetime, 2
        optional :backdated_time_granularity, :string, 3
        optional :can_backdate, :bool, 4
        optional :can_upload, :bool, 5
        optional :count, :int64, 6
        optional :created_time, Datetime, 7
        optional :description, :string, 8
        optional :is_user_facing, :bool, 9
        optional :location, :string, 10
        optional :modified_major, Datetime, 11
        optional :name, :string, 12
        optional :photo_count, :int64, 13
        optional :privacy, :string, 14
        optional :type, :string, 15
        optional :updated_time, Datetime, 16
        optional :video_count, :int64, 17
      end
    end
    
    struct AlbumArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Album, 1
      end
    end
    end
  end
