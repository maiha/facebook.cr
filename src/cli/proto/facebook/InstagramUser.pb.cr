## Generated from facebook/InstagramUser.proto
require "protobuf"

module Facebook
  module Proto
    
    struct InstagramUser
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :follow_count, :int64, 2
        optional :followed_by_count, :int64, 3
        optional :has_profile_picture, :bool, 4
        optional :is_private, :bool, 5
        optional :is_published, :bool, 6
        optional :media_count, :int64, 7
        optional :profile_pic, :string, 8
        optional :username, :string, 9
      end
    end
    
    struct InstagramUserArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, InstagramUser, 1
      end
    end
    end
  end
