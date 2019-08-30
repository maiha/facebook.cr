## Generated from facebook/IgComment.proto
require "protobuf"

module Facebook
  module Proto
    
    struct IgComment
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :hidden, :bool, 2
        optional :like_count, :int64, 3
        optional :text, :string, 4
        optional :timestamp, Datetime, 5
        optional :username, :string, 6
      end
    end
    
    struct IgCommentArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, IgComment, 1
      end
    end
    end
  end
