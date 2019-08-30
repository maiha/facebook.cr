## Generated from facebook/PageBroadcast.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageBroadcast
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :scheduled_time, :string, 2
        optional :status, :string, 3
      end
    end
    
    struct PageBroadcastArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageBroadcast, 1
      end
    end
    end
  end
