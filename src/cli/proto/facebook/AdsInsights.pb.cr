## Generated from facebook/AdsInsights.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdsInsights
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :account_currency, :string, 1
        optional :account_id, :string, 2
        optional :account_name, :string, 3
        optional :actions_per_impression, :string, 4
        optional :activity_recency, :string, 5
        optional :ad_bid_type, :string, 6
        optional :ad_bid_value, :string, 7
        optional :ad_delivery, :string, 8
        optional :ad_format_asset, :string, 9
        optional :ad_id, :string, 10
        optional :ad_name, :string, 11
        optional :adset_bid_type, :string, 12
        optional :adset_bid_value, :string, 13
        optional :adset_budget_type, :string, 14
        optional :adset_budget_value, :string, 15
        optional :adset_delivery, :string, 16
        optional :adset_end, :string, 17
        optional :adset_id, :string, 18
        optional :adset_name, :string, 19
        optional :adset_start, :string, 20
        optional :age, :string, 21
        optional :age_targeting, :string, 22
        optional :app_store_clicks, :string, 23
        optional :attention_events_per_impression, :string, 24
        optional :attention_events_unq_per_reach, :string, 25
        optional :auction_bid, :string, 26
        optional :auction_competitiveness, :string, 27
        optional :auction_max_competitor_bid, :string, 28
        optional :buying_type, :string, 29
        optional :call_to_action_clicks, :string, 30
        optional :campaign_delivery, :string, 31
        optional :campaign_end, :string, 32
        optional :campaign_id, :string, 33
        optional :campaign_name, :string, 34
        optional :campaign_start, :string, 35
        optional :canvas_avg_view_percent, :string, 36
        optional :canvas_avg_view_time, :string, 37
        optional :card_views, :string, 38
        optional :clicks, :string, 39
        optional :cost_per_dda_countby_convs, :string, 40
        optional :cost_per_dwell, :string, 41
        optional :cost_per_dwell_3_sec, :string, 42
        optional :cost_per_dwell_5_sec, :string, 43
        optional :cost_per_dwell_7_sec, :string, 44
        optional :cost_per_estimated_ad_recallers, :string, 45
        optional :cost_per_inline_link_click, :string, 46
        optional :cost_per_inline_post_engagement, :string, 47
        optional :cost_per_total_action, :string, 48
        optional :cost_per_unique_click, :string, 49
        optional :cost_per_unique_inline_link_click, :string, 50
        optional :country, :string, 51
        optional :cpc, :string, 52
        optional :cpm, :string, 53
        optional :cpp, :string, 54
        optional :created_time, :string, 55
        optional :creative_fingerprint, :string, 56
        optional :ctr, :string, 57
        optional :date_start, :string, 58
        optional :date_stop, :string, 59
        optional :dda_countby_convs, :string, 60
        optional :deduping_1st_source_ratio, :string, 61
        optional :deduping_2nd_source_ratio, :string, 62
        optional :deduping_3rd_source_ratio, :string, 63
        optional :deduping_ratio, :string, 64
        optional :deeplink_clicks, :string, 65
        optional :device_platform, :string, 66
        optional :dma, :string, 67
        optional :dwell_3_sec, :string, 68
        optional :dwell_5_sec, :string, 69
        optional :dwell_7_sec, :string, 70
        optional :dwell_rate, :string, 71
        optional :earned_impression, :string, 72
        optional :estimated_ad_recall_rate, :string, 73
        optional :estimated_ad_recall_rate_lower_bound, :string, 74
        optional :estimated_ad_recall_rate_upper_bound, :string, 75
        optional :estimated_ad_recallers, :string, 76
        optional :estimated_ad_recallers_lower_bound, :string, 77
        optional :estimated_ad_recallers_upper_bound, :string, 78
        optional :frequency, :string, 79
        optional :frequency_value, :string, 80
        optional :full_view_impressions, :string, 81
        optional :full_view_reach, :string, 82
        optional :gender, :string, 83
        optional :gender_targeting, :string, 84
        optional :hourly_stats_aggregated_by_advertiser_time_zone, :string, 85
        optional :hourly_stats_aggregated_by_audience_time_zone, :string, 86
        optional :impression_device, :string, 87
        optional :impressions, :string, 88
        optional :impressions_auto_refresh, :string, 89
        optional :impressions_gross, :string, 90
        optional :inline_link_click_ctr, :string, 91
        optional :inline_link_clicks, :string, 92
        optional :inline_post_engagement, :string, 93
        optional :instant_experience_clicks_to_open, :string, 94
        optional :instant_experience_clicks_to_start, :string, 95
        optional :instant_experience_outbound_clicks, :string, 96
        optional :labels, :string, 97
        optional :location, :string, 98
        optional :newsfeed_avg_position, :string, 99
        optional :newsfeed_clicks, :string, 100
        optional :newsfeed_impressions, :string, 101
        optional :objective, :string, 102
        optional :optimization_goal, :string, 103
        optional :performance_indicator, :string, 104
        optional :place_page_id, :string, 105
        optional :place_page_name, :string, 106
        optional :placement, :string, 107
        optional :platform_position, :string, 108
        optional :product_id, :string, 109
        optional :publisher_platform, :string, 110
        optional :quality_score_ectr, :string, 111
        optional :quality_score_ecvr, :string, 112
        optional :quality_score_enfbr, :string, 113
        optional :quality_score_organic, :string, 114
        optional :reach, :string, 115
        optional :region, :string, 116
        optional :social_spend, :string, 117
        optional :spend, :string, 118
        optional :thumb_stops, :string, 119
        optional :today_spend, :string, 120
        optional :total_action_value, :string, 121
        optional :total_actions, :string, 122
        optional :total_unique_actions, :string, 123
        optional :unique_clicks, :string, 124
        optional :unique_ctr, :string, 125
        optional :unique_impressions, :string, 126
        optional :unique_inline_link_click_ctr, :string, 127
        optional :unique_inline_link_clicks, :string, 128
        optional :unique_link_clicks_ctr, :string, 129
        optional :updated_time, :string, 130
        optional :website_clicks, :string, 131
        optional :wish_bid, :string, 132
      end
    end
    
    struct AdsInsightsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdsInsights, 1
      end
    end
    end
  end
