## Generated from facebook/IgMedia.proto
require "protobuf"

module Facebook
  module Proto
    
    struct IgMedia
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :caption, :string, 2
        optional :comments_count, :int64, 3
        optional :ig_id, :string, 4
        optional :is_comment_enabled, :bool, 5
        optional :like_count, :int64, 6
        optional :media_type, :string, 7
        optional :media_url, :string, 8
        optional :permalink, :string, 9
        optional :shortcode, :string, 10
        optional :thumbnail_url, :string, 11
        optional :timestamp, Datetime, 12
        optional :username, :string, 13
      end
    end
    
    struct IgMediaArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, IgMedia, 1
      end
    end
    end
  end
