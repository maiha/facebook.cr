## Generated from facebook/PageInsightsAsyncExportRun.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageInsightsAsyncExportRun
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :data_level, :string, 2
        optional :format, :string, 3
        optional :gen_report_date, :int64, 4
        optional :report_end_date, :int64, 5
        optional :report_start_date, :int64, 6
        optional :status, :string, 7
      end
    end
    
    struct PageInsightsAsyncExportRunArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageInsightsAsyncExportRun, 1
      end
    end
    end
  end
