## Generated from facebook/OfflineConversionDataSet.proto
require "protobuf"

module Facebook
  module Proto
    
    struct OfflineConversionDataSet
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :config, :string, 3
        optional :creation_time, Datetime, 4
        optional :description, :string, 5
        optional :duplicate_entries, :int64, 6
        optional :enable_auto_assign_to_accounts, :bool, 7
        optional :event_stats, :string, 8
        optional :event_time_max, :int64, 9
        optional :event_time_min, :int64, 10
        optional :is_mta_use, :bool, 11
        optional :is_restricted_use, :bool, 12
        optional :is_unavailable, :bool, 13
        optional :last_upload_app, :string, 14
        optional :last_upload_app_changed_time, :int64, 15
        optional :match_rate_approx, :int64, 16
        optional :matched_entries, :int64, 17
        optional :name, :string, 18
        optional :valid_entries, :int64, 19
        optional :auto_assign_to_new_accounts_only, :bool, 20
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
