## Generated from facebook/PlaceTopic.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PlaceTopic
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :count, :int64, 2
        optional :has_children, :bool, 3
        optional :icon_url, :string, 4
        optional :name, :string, 5
        repeated :parent_ids, :string, 6
        optional :plural_name, :string, 7
        repeated :top_subtopic_names, :string, 8
      end
    end
    
    struct PlaceTopicArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PlaceTopic, 1
      end
    end
    end
  end
