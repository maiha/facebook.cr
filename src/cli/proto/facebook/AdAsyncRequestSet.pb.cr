## Generated from facebook/AdAsyncRequestSet.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAsyncRequestSet
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :canceled_count, :int64, 2
        optional :created_time, Datetime, 3
        optional :error_count, :int64, 4
        optional :in_progress_count, :int64, 5
        optional :initial_count, :int64, 6
        optional :is_completed, :bool, 7
        optional :name, :string, 8
        optional :notification_mode, :string, 9
        optional :notification_status, :string, 10
        optional :notification_uri, :string, 11
        optional :owner_id, :string, 12
        optional :success_count, :int64, 13
        optional :total_count, :int64, 14
        optional :updated_time, Datetime, 15
      end
    end
    
    struct AdAsyncRequestSetArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAsyncRequestSet, 1
      end
    end
    end
  end
