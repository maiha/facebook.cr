## Generated from facebook/AdReportRun.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdReportRun
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :async_percent_completion, :int64, 3
        optional :async_status, :string, 4
        optional :date_start, :string, 5
        optional :date_stop, :string, 6
        repeated :emails, :string, 7
        optional :friendly_name, :string, 8
        optional :is_bookmarked, :bool, 9
        optional :is_running, :bool, 10
        optional :schedule_id, :string, 11
        optional :time_completed, :int64, 12
        optional :time_ref, :int64, 13
        optional :default_summary, :bool, 14
        repeated :export_columns, :string, 15
        optional :export_format, :string, 16
        optional :export_name, :string, 17
        repeated :fields, :string, 18
        optional :product_id_limit, :int64, 19
        repeated :sort, :string, 20
        repeated :summary, :string, 21
        optional :time_increment, :string, 22
        optional :use_account_attribution_setting, :bool, 23
      end
    end
    
    struct AdReportRunArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdReportRun, 1
      end
    end
    end
  end
