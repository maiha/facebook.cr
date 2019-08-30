## Generated from facebook/LiveVideo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LiveVideo
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :ad_break_failure_reason, :string, 2
        optional :broadcast_start_time, Datetime, 3
        optional :creation_time, Datetime, 4
        optional :dash_ingest_url, :string, 5
        optional :dash_preview_url, :string, 6
        optional :description, :string, 7
        optional :embed_html, :string, 8
        optional :is_manual_mode, :bool, 9
        optional :is_reference_only, :bool, 10
        optional :live_views, :int64, 11
        optional :permalink_url, :string, 12
        optional :planned_start_time, Datetime, 13
        optional :seconds_left, :int64, 14
        optional :secure_stream_url, :string, 15
        optional :status, :string, 16
        optional :stream_url, :string, 17
        optional :title, :string, 18
        optional :total_views, :string, 19
      end
    end
    
    struct LiveVideoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LiveVideo, 1
      end
    end
    end
  end
