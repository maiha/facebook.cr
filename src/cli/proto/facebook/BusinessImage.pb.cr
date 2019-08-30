## Generated from facebook/BusinessImage.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessImage
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :creation_time, Datetime, 2
        optional :hash, :string, 3
        optional :height, :int64, 4
        optional :name, :string, 5
        optional :url, :string, 6
        optional :url_128, :string, 7
        optional :width, :int64, 8
        optional :creative_folder_id, :string, 9
        repeated :validation_ad_placements, :string, 10
      end
    end
    
    struct BusinessImageArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessImage, 1
      end
    end
    end
  end
