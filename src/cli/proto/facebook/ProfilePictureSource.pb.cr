## Generated from facebook/ProfilePictureSource.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProfilePictureSource
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :bottom, :int64, 1
        optional :cache_key, :string, 2
        optional :height, :int64, 3
        optional :is_silhouette, :bool, 4
        optional :left, :int64, 5
        optional :right, :int64, 6
        optional :top, :int64, 7
        optional :url, :string, 8
        optional :width, :int64, 9
      end
    end
    
    struct ProfilePictureSourceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProfilePictureSource, 1
      end
    end
    end
  end
