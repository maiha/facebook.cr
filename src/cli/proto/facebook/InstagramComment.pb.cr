## Generated from facebook/InstagramComment.proto
require "protobuf"

module Facebook
  module Proto
    
    struct InstagramComment
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :comment_type, :string, 2
        optional :created_at, Datetime, 3
        optional :instagram_comment_id, :string, 4
        optional :message, :string, 5
      end
    end
    
    struct InstagramCommentArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, InstagramComment, 1
      end
    end
    end
  end
