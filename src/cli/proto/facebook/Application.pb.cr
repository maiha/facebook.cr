## Generated from facebook/Application.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Application
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :an_ad_space_limit, :int64, 3
        repeated :an_platforms, :string, 4
        repeated :android_key_hash, :string, 5
        repeated :app_domains, :string, 6
        optional :app_events_feature_bitmask, :int64, 7
        optional :app_events_session_timeout, :int64, 8
        optional :app_install_tracked, :bool, 9
        optional :app_name, :string, 10
        optional :app_type, :int64, 11
        optional :auth_dialog_data_help_url, :string, 12
        optional :auth_dialog_headline, :string, 13
        optional :auth_dialog_perms_explanation, :string, 14
        optional :auth_referral_default_activity_privacy, :string, 15
        optional :auth_referral_enabled, :int64, 16
        repeated :auth_referral_extended_perms, :string, 17
        repeated :auth_referral_friend_perms, :string, 18
        optional :auth_referral_response_type, :string, 19
        repeated :auth_referral_user_perms, :string, 20
        optional :auto_event_setup_enabled, :bool, 21
        optional :canvas_fluid_height, :bool, 22
        optional :canvas_fluid_width, :int64, 23
        optional :canvas_url, :string, 24
        optional :category, :string, 25
        optional :company, :string, 26
        optional :configured_ios_sso, :bool, 27
        optional :contact_email, :string, 28
        optional :created_time, Datetime, 29
        optional :creator_uid, :string, 30
        optional :daily_active_users, :string, 31
        optional :daily_active_users_rank, :int64, 32
        optional :deauth_callback_url, :string, 33
        optional :default_share_mode, :string, 34
        optional :description, :string, 35
        optional :financial_id, :string, 36
        optional :gdpv4_chrome_custom_tabs_enabled, :bool, 37
        optional :gdpv4_enabled, :bool, 38
        optional :gdpv4_nux_content, :string, 39
        optional :gdpv4_nux_enabled, :bool, 40
        optional :has_messenger_product, :bool, 41
        optional :hosting_url, :string, 42
        optional :icon_url, :string, 43
        repeated :ios_bundle_id, :string, 44
        optional :ios_sfvc_attr, :bool, 45
        optional :ios_supports_native_proxy_auth_flow, :bool, 46
        optional :ios_supports_system_auth, :bool, 47
        optional :ipad_app_store_id, :string, 48
        optional :iphone_app_store_id, :string, 49
        optional :link, :string, 50
        optional :logging_token, :string, 51
        optional :login_secret, :string, 52
        optional :logo_url, :string, 53
        optional :mobile_profile_section_url, :string, 54
        optional :mobile_web_url, :string, 55
        optional :monthly_active_users, :string, 56
        optional :monthly_active_users_rank, :int64, 57
        optional :name, :string, 58
        optional :namespace, :string, 59
        optional :page_tab_default_name, :string, 60
        optional :page_tab_url, :string, 61
        optional :photo_url, :string, 62
        optional :privacy_policy_url, :string, 63
        optional :profile_section_url, :string, 64
        optional :property_id, :string, 65
        repeated :real_time_mode_devices, :string, 66
        optional :restrictive_data_filter_params, :string, 67
        optional :restrictive_data_filter_rules, :string, 68
        optional :sdk_update_message, :string, 69
        optional :seamless_login, :int64, 70
        optional :secure_canvas_url, :string, 71
        optional :secure_page_tab_url, :string, 72
        optional :server_ip_whitelist, :string, 73
        optional :smart_login_bookmark_icon_url, :string, 74
        optional :smart_login_menu_icon_url, :string, 75
        optional :social_discovery, :int64, 76
        optional :subcategory, :string, 77
        repeated :supported_platforms, :string, 78
        optional :supports_attribution, :bool, 79
        optional :supports_implicit_sdk_logging, :bool, 80
        optional :suppress_native_ios_gdp, :bool, 81
        optional :terms_of_service_url, :string, 82
        optional :url_scheme_suffix, :string, 83
        optional :user_support_email, :string, 84
        optional :user_support_url, :string, 85
        optional :website_url, :string, 86
        optional :weekly_active_users, :string, 87
      end
    end
    
    struct ApplicationArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Application, 1
      end
    end
    end
  end
