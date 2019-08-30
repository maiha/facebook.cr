## Generated from facebook/AdReportSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdReportSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        repeated :actions_group_by, :string, 3
        optional :creation_source, :string, 4
        repeated :data_columns, :string, 5
        optional :date_preset, :string, 6
        repeated :export_columns, :string, 7
        optional :format_version, :int64, 8
        optional :name, :string, 9
        optional :report_schedule_id, :string, 10
        optional :sort_by, :string, 11
        optional :sort_dir, :string, 12
        optional :time_increment, :string, 13
      end
    end
    
    struct AdReportSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdReportSpec, 1
      end
    end
    end
  end
