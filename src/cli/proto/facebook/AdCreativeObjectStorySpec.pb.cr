## Generated from facebook/AdCreativeObjectStorySpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeObjectStorySpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :instagram_actor_id, :string, 1
        optional :page_id, :string, 2
      end
    end
    
    struct AdCreativeObjectStorySpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeObjectStorySpec, 1
      end
    end
    end
  end
