## Generated from facebook/Ad.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Ad
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :adset_id, :string, 3
        optional :bid_amount, :int64, 4
        optional :bid_type, :string, 5
        optional :campaign_id, :string, 6
        optional :configured_status, :string, 7
        optional :created_time, Datetime, 8
        optional :demolink_hash, :string, 9
        optional :display_sequence, :int64, 10
        optional :effective_status, :string, 11
        optional :engagement_audience, :bool, 12
        optional :is_autobid, :bool, 13
        optional :last_updated_by_app_id, :string, 14
        optional :name, :string, 15
        optional :preview_shareable_link, :string, 16
        optional :priority, :int64, 17
        optional :source_ad_id, :string, 18
        optional :status, :string, 19
        optional :targeting, Targeting, 20
        optional :updated_time, Datetime, 21
        optional :audience_id, :string, 22
        optional :date_format, :string, 23
        optional :draft_adgroup_id, :string, 24
        repeated :execution_options, :string, 25
        optional :include_demolink_hashes, :bool, 26
      end
    end
    
    struct AdArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Ad, 1
      end
    end
    end
  end
