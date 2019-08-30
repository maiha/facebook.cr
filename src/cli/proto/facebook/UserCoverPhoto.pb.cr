## Generated from facebook/UserCoverPhoto.proto
require "protobuf"

module Facebook
  module Proto
    
    struct UserCoverPhoto
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :offset_x, :double, 1
        optional :offset_y, :double, 2
        optional :source, :string, 3
      end
    end
    
    struct UserCoverPhotoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, UserCoverPhoto, 1
      end
    end
    end
  end
