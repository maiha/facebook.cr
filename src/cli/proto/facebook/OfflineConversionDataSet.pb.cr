## Generated from facebook/OfflineConversionDataSet.proto
require "protobuf"

module Facebook
  module Proto
    
    struct OfflineConversionDataSet
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :config, :string, 2
        optional :creation_time, Datetime, 3
        optional :description, :string, 4
        optional :duplicate_entries, :int64, 5
        optional :enable_auto_assign_to_accounts, :bool, 6
        optional :event_stats, :string, 7
        optional :event_time_max, :int64, 8
        optional :event_time_min, :int64, 9
        optional :is_mta_use, :bool, 10
        optional :is_restricted_use, :bool, 11
        optional :is_unavailable, :bool, 12
        optional :last_upload_app, :string, 13
        optional :last_upload_app_changed_time, :int64, 14
        optional :match_rate_approx, :int64, 15
        optional :matched_entries, :int64, 16
        optional :name, :string, 17
        optional :valid_entries, :int64, 18
        optional :auto_assign_to_new_accounts_only, :bool, 19
      end
    end
    
    struct OfflineConversionDataSetArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, OfflineConversionDataSet, 1
      end
    end
    end
  end
