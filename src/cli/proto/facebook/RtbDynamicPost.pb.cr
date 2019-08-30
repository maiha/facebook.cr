## Generated from facebook/RtbDynamicPost.proto
require "protobuf"

module Facebook
  module Proto
    
    struct RtbDynamicPost
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :created, Datetime, 2
        optional :description, :string, 3
        optional :image_url, :string, 4
        optional :link, :string, 5
        optional :message, :string, 6
        optional :owner_id, :string, 7
        optional :place_id, :string, 8
        optional :product_id, :string, 9
        optional :title, :string, 10
      end
    end
    
    struct RtbDynamicPostArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, RtbDynamicPost, 1
      end
    end
    end
  end
