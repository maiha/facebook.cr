## Generated from facebook/VaultDeletedImage.proto
require "protobuf"

module Facebook
  module Proto
    
    struct VaultDeletedImage
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :client_image_hash, :string, 2
        optional :date_taken, Datetime, 3
        optional :remote_id, :string, 4
      end
    end
    
    struct VaultDeletedImageArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, VaultDeletedImage, 1
      end
    end
    end
  end
