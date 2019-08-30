## Generated from facebook/CustomAudience.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CustomAudience
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :approximate_count, :int64, 3
        optional :customer_file_source, :string, 4
        optional :data_source_types, :string, 5
        optional :datafile_custom_audience_uploading_status, :string, 6
        optional :description, :string, 7
        optional :household_audience, :int64, 8
        optional :is_household, :bool, 9
        optional :is_snapshot, :bool, 10
        optional :is_value_based, :bool, 11
        repeated :lookalike_audience_ids, :string, 12
        optional :name, :string, 13
        optional :opt_out_link, :string, 14
        optional :pixel_id, :string, 15
        optional :retention_days, :int64, 16
        optional :rev_share_policy_id, :int64, 17
        optional :rule, :string, 18
        optional :rule_aggregation, :string, 19
        optional :rule_v2, :string, 20
        optional :seed_audience, :int64, 21
        optional :subtype, :string, 22
        optional :time_content_updated, :int64, 23
        optional :time_created, :int64, 24
        optional :time_updated, :int64, 25
        optional :accountid, :string, 26
        optional :additionalmetadata, :string, 27
        repeated :allowed_domains, :string, 28
        optional :associated_audience_id, :int64, 29
        optional :claim_objective, :string, 30
        optional :content_type, :string, 31
        optional :countries, :string, 32
        optional :dataset_id, :string, 33
        optional :details, :string, 34
        optional :enable_fetch_or_create, :bool, 35
        optional :event_source_group, :string, 36
        optional :expectedsize, :int64, 37
        optional :gender, :string, 38
        optional :isprivate, :bool, 39
        optional :is_household_exclusion, :bool, 40
        repeated :list_of_accounts, :int64, 41
        optional :maxage, :int64, 42
        optional :minage, :int64, 43
        optional :origin_audience_id, :string, 44
        optional :parent_audience_id, :int64, 45
        optional :partnerid, :string, 46
        optional :partner_reference_key, :string, 47
        optional :prefill, :bool, 48
        optional :product_set_id, :string, 49
        optional :source, :string, 50
        repeated :tags, :string, 51
        repeated :video_group_ids, :string, 52
      end
    end
    
    struct CustomAudienceArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CustomAudience, 1
      end
    end
    end
  end
