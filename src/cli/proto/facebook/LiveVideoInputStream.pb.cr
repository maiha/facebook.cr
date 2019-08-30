## Generated from facebook/LiveVideoInputStream.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LiveVideoInputStream
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :dash_ingest_url, :string, 2
        optional :dash_preview_url, :string, 3
        optional :is_master, :bool, 4
        optional :secure_stream_url, :string, 5
        optional :stream_id, :string, 6
        optional :stream_url, :string, 7
      end
    end
    
    struct LiveVideoInputStreamArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LiveVideoInputStream, 1
      end
    end
    end
  end
