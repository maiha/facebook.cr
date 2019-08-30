## Generated from facebook/Profile.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Profile
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :can_post, :bool, 2
        optional :link, :string, 3
        optional :name, :string, 4
        optional :pic, :string, 5
        optional :pic_large, :string, 6
        optional :pic_small, :string, 7
        optional :pic_square, :string, 8
        optional :profile_type, :string, 9
        optional :username, :string, 10
      end
    end
    
    struct ProfileArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Profile, 1
      end
    end
    end
  end
