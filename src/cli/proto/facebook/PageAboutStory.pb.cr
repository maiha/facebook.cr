## Generated from facebook/PageAboutStory.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageAboutStory
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :is_published, :bool, 2
        optional :page_id, :string, 3
        optional :title, :string, 4
      end
    end
    
    struct PageAboutStoryArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageAboutStory, 1
      end
    end
    end
  end
