## Generated from facebook/Page.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Page
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :about, :string, 2
        optional :access_token, :string, 3
        optional :affiliation, :string, 4
        optional :app_id, :string, 5
        optional :artists_we_like, :string, 6
        optional :attire, :string, 7
        optional :awards, :string, 8
        optional :band_interests, :string, 9
        optional :band_members, :string, 10
        optional :bio, :string, 11
        optional :birthday, :string, 12
        optional :booking_agent, :string, 13
        optional :built, :string, 14
        optional :can_checkin, :bool, 15
        optional :can_post, :bool, 16
        optional :category, :string, 17
        optional :checkins, :int64, 18
        optional :company_overview, :string, 19
        repeated :copyright_whitelisted_ig_partners, :string, 20
        optional :country_page_likes, :int64, 21
        optional :culinary_team, :string, 22
        optional :current_location, :string, 23
        optional :description, :string, 24
        optional :description_html, :string, 25
        optional :directed_by, :string, 26
        optional :display_subtext, :string, 27
        optional :displayed_message_response_time, :string, 28
        repeated :emails, :string, 29
        optional :fan_count, :int64, 30
        optional :features, :string, 31
        repeated :food_styles, :string, 32
        optional :founded, :string, 33
        optional :general_info, :string, 34
        optional :general_manager, :string, 35
        optional :genre, :string, 36
        optional :global_brand_page_name, :string, 37
        optional :global_brand_root_id, :string, 38
        optional :has_added_app, :bool, 39
        optional :has_whatsapp_business_number, :bool, 40
        optional :has_whatsapp_number, :bool, 41
        optional :hometown, :string, 42
        optional :impressum, :string, 43
        optional :influences, :string, 44
        optional :instant_articles_review_status, :string, 45
        optional :is_always_open, :bool, 46
        optional :is_chain, :bool, 47
        optional :is_community_page, :bool, 48
        optional :is_eligible_for_branded_content, :bool, 49
        optional :is_messenger_bot_get_started_enabled, :bool, 50
        optional :is_messenger_platform_bot, :bool, 51
        optional :is_owned, :bool, 52
        optional :is_permanently_closed, :bool, 53
        optional :is_published, :bool, 54
        optional :is_unclaimed, :bool, 55
        optional :is_verified, :bool, 56
        optional :is_webhooks_subscribed, :bool, 57
        optional :leadgen_has_crm_integration, :bool, 58
        optional :leadgen_has_fat_ping_crm_integration, :bool, 59
        optional :leadgen_tos_acceptance_time, Datetime, 60
        optional :leadgen_tos_accepted, :bool, 61
        optional :link, :string, 62
        optional :members, :string, 63
        optional :merchant_id, :string, 64
        optional :merchant_review_status, :string, 65
        repeated :messenger_ads_default_icebreakers, :string, 66
        repeated :messenger_ads_default_quick_replies, :string, 67
        optional :messenger_ads_quick_replies_type, :string, 68
        optional :mission, :string, 69
        optional :mpg, :string, 70
        optional :name, :string, 71
        optional :name_with_location_descriptor, :string, 72
        optional :network, :string, 73
        optional :new_like_count, :int64, 74
        optional :offer_eligible, :bool, 75
        optional :overall_star_rating, :double, 76
        optional :page_token, :string, 77
        optional :personal_info, :string, 78
        optional :personal_interests, :string, 79
        optional :pharma_safety_info, :string, 80
        optional :phone, :string, 81
        optional :place_type, :string, 82
        optional :plot_outline, :string, 83
        optional :press_contact, :string, 84
        optional :price_range, :string, 85
        optional :privacy_info_url, :string, 86
        optional :produced_by, :string, 87
        optional :products, :string, 88
        optional :promotion_eligible, :bool, 89
        optional :promotion_ineligible_reason, :string, 90
        optional :public_transit, :string, 91
        optional :rating_count, :int64, 92
        optional :recipient, :string, 93
        optional :record_label, :string, 94
        optional :release_date, :string, 95
        optional :schedule, :string, 96
        optional :screenplay_by, :string, 97
        optional :season, :string, 98
        optional :single_line_address, :string, 99
        optional :starring, :string, 100
        optional :store_code, :string, 101
        optional :store_location_descriptor, :string, 102
        optional :store_number, :int64, 103
        optional :studio, :string, 104
        optional :supports_instant_articles, :bool, 105
        optional :talking_about_count, :int64, 106
        optional :unread_message_count, :int64, 107
        optional :unread_notif_count, :int64, 108
        optional :unseen_message_count, :int64, 109
        optional :username, :string, 110
        optional :verification_status, :string, 111
        optional :website, :string, 112
        optional :were_here_count, :int64, 113
        optional :whatsapp_number, :string, 114
        optional :written_by, :string, 115
      end
    end
    
    struct PageArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Page, 1
      end
    end
    end
  end
