## Generated from facebook/Photo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Photo
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :alt_text, :string, 2
        optional :alt_text_custom, :string, 3
        optional :backdated_time, Datetime, 4
        optional :backdated_time_granularity, :string, 5
        optional :can_backdate, :bool, 6
        optional :can_delete, :bool, 7
        optional :can_tag, :bool, 8
        optional :created_time, Datetime, 9
        optional :height, :int64, 10
        optional :icon, :string, 11
        optional :link, :string, 12
        optional :name, :string, 13
        optional :page_story_id, :string, 14
        optional :picture, :string, 15
        optional :position, :int64, 16
        optional :source, :string, 17
        optional :updated_time, Datetime, 18
        optional :width, :int64, 19
      end
    end
    
    struct PhotoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Photo, 1
      end
    end
    end
  end
