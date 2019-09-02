## Generated from Targeting.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Targeting
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :adgroup_id, :string, 1
        optional :age_max, :int64, 2
        optional :age_min, :int64, 3
        optional :alternate_auto_targeting_option, :string, 4
        optional :app_install_state, :string, 5
        repeated :audience_network_positions, :string, 6
        repeated :brand_safety_content_filter_levels, :string, 7
        repeated :college_years, :int64, 8
        repeated :countries, :string, 9
        repeated :country, :string, 10
        repeated :country_groups, :string, 11
        repeated :device_platforms, :string, 12
        optional :direct_install_devices, :bool, 13
        repeated :dynamic_audience_ids, :string, 14
        repeated :education_statuses, :int64, 15
        repeated :effective_audience_network_positions, :string, 16
        repeated :effective_device_platforms, :string, 17
        repeated :effective_facebook_positions, :string, 18
        repeated :effective_instagram_positions, :string, 19
        repeated :effective_messenger_positions, :string, 20
        repeated :effective_publisher_platforms, :string, 21
        repeated :exclude_reached_since, :string, 22
        repeated :excluded_brand_safety_content_types, :string, 23
        repeated :excluded_dynamic_audience_ids, :string, 24
        repeated :excluded_mobile_device_model, :string, 25
        repeated :excluded_publisher_categories, :string, 26
        repeated :excluded_publisher_list_ids, :string, 27
        repeated :excluded_user_device, :string, 28
        repeated :facebook_positions, :string, 29
        optional :fb_deal_id, :string, 30
        repeated :genders, :int64, 31
        repeated :instagram_positions, :string, 32
        repeated :interested_in, :int64, 33
        optional :is_whatsapp_destination_ad, :bool, 34
        repeated :keywords, :string, 35
        repeated :locales, :int64, 36
        repeated :messenger_positions, :string, 37
        repeated :place_page_set_ids, :string, 38
        repeated :political_views, :int64, 39
        repeated :publisher_platforms, :string, 40
        repeated :publisher_visibility_categories, :string, 41
        optional :radius, :string, 42
        repeated :relationship_statuses, :int64, 43
        repeated :site_category, :string, 44
        optional :targeting_optimization, :string, 45
        repeated :user_device, :string, 46
        repeated :user_event, :int64, 47
        repeated :user_os, :string, 48
        repeated :wireless_carrier, :string, 49
        repeated :zips, :string, 50
      end
    end
    
    struct TargetingArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Targeting, 1
      end
    end
    end
  end
