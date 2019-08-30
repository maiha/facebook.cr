## Generated from facebook/CoverPhoto.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CoverPhoto
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :cover_id, :string, 2
        optional :offset_x, :double, 3
        optional :offset_y, :double, 4
        optional :source, :string, 5
      end
    end
    
    struct CoverPhotoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CoverPhoto, 1
      end
    end
    end
  end
