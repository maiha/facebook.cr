## Generated from facebook/UnifiedThread.proto
require "protobuf"

module Facebook
  module Proto
    
    struct UnifiedThread
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :can_reply, :bool, 2
        optional :is_subscribed, :bool, 3
        optional :link, :string, 4
        optional :message_count, :int64, 5
        optional :name, :string, 6
        optional :scoped_thread_key, :string, 7
        optional :snippet, :string, 8
        optional :subject, :string, 9
        optional :unread_count, :int64, 10
        optional :updated_time, Datetime, 11
        optional :wallpaper, :string, 12
      end
    end
    
    struct UnifiedThreadArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, UnifiedThread, 1
      end
    end
    end
  end
