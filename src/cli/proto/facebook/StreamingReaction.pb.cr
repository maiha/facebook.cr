## Generated from facebook/StreamingReaction.proto
require "protobuf"

module Facebook
  module Proto
    
    struct StreamingReaction
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :count, :int64, 1
        optional :reaction_type, :string, 2
      end
    end
    
    struct StreamingReactionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, StreamingReaction, 1
      end
    end
    end
  end
