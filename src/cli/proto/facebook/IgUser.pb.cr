## Generated from facebook/IgUser.proto
require "protobuf"

module Facebook
  module Proto
    
    struct IgUser
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :biography, :string, 2
        optional :followers_count, :int64, 3
        optional :follows_count, :int64, 4
        optional :ig_id, :int64, 5
        optional :media_count, :int64, 6
        optional :name, :string, 7
        optional :profile_picture_url, :string, 8
        optional :username, :string, 9
        optional :website, :string, 10
      end
    end
    
    struct IgUserArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, IgUser, 1
      end
    end
    end
  end
