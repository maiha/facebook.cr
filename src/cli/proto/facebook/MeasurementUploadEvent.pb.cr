## Generated from facebook/MeasurementUploadEvent.proto
require "protobuf"

module Facebook
  module Proto
    
    struct MeasurementUploadEvent
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :aggregation_level, :string, 2
        optional :conversion_end_date, :string, 3
        optional :conversion_start_date, :string, 4
        optional :event_status, :string, 5
        optional :lookback_window, :string, 6
        optional :match_universe, :string, 7
        optional :timezone, :string, 8
        optional :upload_tag, :string, 9
      end
    end
    
    struct MeasurementUploadEventArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, MeasurementUploadEvent, 1
      end
    end
    end
  end
