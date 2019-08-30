## Generated from facebook/PlayableContent.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PlayableContent
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
        optional :app_id, :string, 3
        optional :source_url, :string, 4
      end
    end
    
    struct PlayableContentArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PlayableContent, 1
      end
    end
    end
  end
