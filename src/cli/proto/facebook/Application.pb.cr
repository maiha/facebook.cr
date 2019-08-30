## Generated from facebook/Application.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Application
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :an_ad_space_limit, :int64, 2
        repeated :an_platforms, :string, 3
        repeated :android_key_hash, :string, 4
        repeated :app_domains, :string, 5
        optional :app_events_feature_bitmask, :int64, 6
        optional :app_events_session_timeout, :int64, 7
        optional :app_install_tracked, :bool, 8
        optional :app_name, :string, 9
        optional :app_type, :int64, 10
        optional :auth_dialog_data_help_url, :string, 11
        optional :auth_dialog_headline, :string, 12
        optional :auth_dialog_perms_explanation, :string, 13
        optional :auth_referral_default_activity_privacy, :string, 14
        optional :auth_referral_enabled, :int64, 15
        repeated :auth_referral_extended_perms, :string, 16
        repeated :auth_referral_friend_perms, :string, 17
        optional :auth_referral_response_type, :string, 18
        repeated :auth_referral_user_perms, :string, 19
        optional :auto_event_setup_enabled, :bool, 20
        optional :canvas_fluid_height, :bool, 21
        optional :canvas_fluid_width, :int64, 22
        optional :canvas_url, :string, 23
        optional :category, :string, 24
        optional :company, :string, 25
        optional :configured_ios_sso, :bool, 26
        optional :contact_email, :string, 27
        optional :created_time, Datetime, 28
        optional :creator_uid, :string, 29
        optional :daily_active_users, :string, 30
        optional :daily_active_users_rank, :int64, 31
        optional :deauth_callback_url, :string, 32
        optional :default_share_mode, :string, 33
        optional :description, :string, 34
        optional :financial_id, :string, 35
        optional :gdpv4_chrome_custom_tabs_enabled, :bool, 36
        optional :gdpv4_enabled, :bool, 37
        optional :gdpv4_nux_content, :string, 38
        optional :gdpv4_nux_enabled, :bool, 39
        optional :has_messenger_product, :bool, 40
        optional :hosting_url, :string, 41
        optional :icon_url, :string, 42
        repeated :ios_bundle_id, :string, 43
        optional :ios_sfvc_attr, :bool, 44
        optional :ios_supports_native_proxy_auth_flow, :bool, 45
        optional :ios_supports_system_auth, :bool, 46
        optional :ipad_app_store_id, :string, 47
        optional :iphone_app_store_id, :string, 48
        optional :link, :string, 49
        optional :logging_token, :string, 50
        optional :login_secret, :string, 51
        optional :logo_url, :string, 52
        optional :mobile_profile_section_url, :string, 53
        optional :mobile_web_url, :string, 54
        optional :monthly_active_users, :string, 55
        optional :monthly_active_users_rank, :int64, 56
        optional :name, :string, 57
        optional :namespace, :string, 58
        optional :page_tab_default_name, :string, 59
        optional :page_tab_url, :string, 60
        optional :photo_url, :string, 61
        optional :privacy_policy_url, :string, 62
        optional :profile_section_url, :string, 63
        optional :property_id, :string, 64
        repeated :real_time_mode_devices, :string, 65
        optional :restrictive_data_filter_params, :string, 66
        optional :restrictive_data_filter_rules, :string, 67
        optional :sdk_update_message, :string, 68
        optional :seamless_login, :int64, 69
        optional :secure_canvas_url, :string, 70
        optional :secure_page_tab_url, :string, 71
        optional :server_ip_whitelist, :string, 72
        optional :smart_login_bookmark_icon_url, :string, 73
        optional :smart_login_menu_icon_url, :string, 74
        optional :social_discovery, :int64, 75
        optional :subcategory, :string, 76
        repeated :supported_platforms, :string, 77
        optional :supports_attribution, :bool, 78
        optional :supports_implicit_sdk_logging, :bool, 79
        optional :suppress_native_ios_gdp, :bool, 80
        optional :terms_of_service_url, :string, 81
        optional :url_scheme_suffix, :string, 82
        optional :user_support_email, :string, 83
        optional :user_support_url, :string, 84
        optional :website_url, :string, 85
        optional :weekly_active_users, :string, 86
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
