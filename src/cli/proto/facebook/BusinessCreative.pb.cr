## Generated from facebook/BusinessCreative.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessCreative
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :creation_time, Datetime, 2
        optional :duration, :int64, 3
        optional :hash, :string, 4
        optional :height, :int64, 5
        optional :name, :string, 6
        optional :thumbnail, :string, 7
        optional :type, :string, 8
        optional :url, :string, 9
        optional :video_id, :string, 10
        optional :width, :int64, 11
      end
    end
    
    struct BusinessCreativeArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessCreative, 1
      end
    end
    end
  end
