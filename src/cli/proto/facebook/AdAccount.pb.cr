## Generated from facebook/AdAccount.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccount
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :account_status, :int64, 3
        optional :age, :double, 4
        optional :amount_spent, :string, 5
        optional :balance, :string, 6
        optional :business_city, :string, 7
        optional :business_country_code, :string, 8
        optional :business_name, :string, 9
        optional :business_state, :string, 10
        optional :business_street, :string, 11
        optional :business_street2, :string, 12
        optional :business_zip, :string, 13
        optional :can_create_brand_lift_study, :bool, 14
        repeated :capabilities, :string, 15
        optional :created_time, Datetime, 16
        optional :currency, :string, 17
        optional :disable_reason, :int64, 18
        optional :end_advertiser, :string, 19
        optional :end_advertiser_name, :string, 20
        optional :fb_entity, :int64, 21
        optional :funding_source, :string, 22
        optional :has_migrated_permissions, :bool, 23
        optional :has_page_authorized_adaccount, :bool, 24
        optional :io_number, :string, 25
        optional :is_attribution_spec_system_default, :bool, 26
        optional :is_direct_deals_enabled, :bool, 27
        optional :is_in_3ds_authorization_enabled_market, :bool, 28
        optional :is_in_middle_of_local_entity_migration, :bool, 29
        optional :is_notifications_enabled, :bool, 30
        optional :is_personal, :int64, 31
        optional :is_prepay_account, :bool, 32
        optional :is_tax_id_required, :bool, 33
        repeated :line_numbers, :int64, 34
        optional :media_agency, :string, 35
        optional :min_campaign_group_spend_cap, :string, 36
        optional :min_daily_budget, :int64, 37
        optional :name, :string, 38
        optional :offsite_pixels_tos_accepted, :bool, 39
        optional :owner, :string, 40
        optional :partner, :string, 41
        optional :show_checkout_experience, :bool, 42
        optional :spend_cap, :string, 43
        optional :tax_id, :string, 44
        optional :tax_id_status, :int64, 45
        optional :tax_id_type, :string, 46
        optional :timezone_id, :int64, 47
        optional :timezone_name, :string, 48
        optional :timezone_offset_hours_utc, :double, 49
        optional :user_role, :string, 50
      end
    end
    
    struct AdAccountArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccount, 1
      end
    end
    end
  end
