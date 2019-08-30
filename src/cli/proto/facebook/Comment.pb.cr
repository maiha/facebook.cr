## Generated from facebook/Comment.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Comment
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :can_comment, :bool, 2
        optional :can_hide, :bool, 3
        optional :can_like, :bool, 4
        optional :can_remove, :bool, 5
        optional :can_reply_privately, :bool, 6
        optional :comment_count, :int64, 7
        optional :created_time, Datetime, 8
        optional :is_hidden, :bool, 9
        optional :is_private, :bool, 10
        optional :like_count, :int64, 11
        optional :live_broadcast_timestamp, :int64, 12
        optional :message, :string, 13
        optional :permalink_url, :string, 14
        optional :user_likes, :bool, 15
      end
    end
    
    struct CommentArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Comment, 1
      end
    end
    end
  end
