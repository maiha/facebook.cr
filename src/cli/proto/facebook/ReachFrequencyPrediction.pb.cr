## Generated from facebook/ReachFrequencyPrediction.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ReachFrequencyPrediction
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :int64, 2
        optional :auction_entry_option_index, :int64, 3
        optional :business_id, :int64, 4
        optional :buying_type, :string, 5
        optional :campaign_group_id, :int64, 6
        optional :campaign_id, :string, 7
        optional :campaign_time_start, Datetime, 8
        optional :campaign_time_stop, Datetime, 9
        optional :currency, :string, 10
        repeated :curve_reach, :int64, 11
        optional :destination_id, :string, 12
        optional :end_time, Datetime, 13
        optional :expiration_time, Datetime, 14
        optional :external_budget, :int64, 15
        optional :external_impression, :int64, 16
        optional :external_maximum_budget, :int64, 17
        optional :external_maximum_impression, :string, 18
        optional :external_maximum_reach, :int64, 19
        optional :external_minimum_budget, :int64, 20
        optional :external_minimum_impression, :int64, 21
        optional :external_minimum_reach, :int64, 22
        optional :external_reach, :int64, 23
        optional :external_values_breakdown, :string, 24
        optional :feed_ratio_0000, :int64, 25
        optional :frequency_cap, :int64, 26
        optional :grp_audience_size, :double, 27
        optional :grp_avg_probability_map, :string, 28
        optional :grp_country_audience_size, :double, 29
        optional :grp_dmas_audience_size, :double, 30
        optional :grp_filtering_threshold_00, :int64, 31
        optional :grp_points, :double, 32
        optional :grp_ratio, :double, 33
        optional :grp_reach_ratio, :double, 34
        optional :grp_status, :string, 35
        optional :holdout_percentage, :int64, 36
        repeated :impression_curve, :int64, 37
        optional :instagram_destination_id, :string, 38
        repeated :instream_packages, :string, 39
        optional :interval_frequency_cap, :int64, 40
        optional :interval_frequency_cap_reset_period, :int64, 41
        optional :is_bonus_media, :int64, 42
        optional :is_conversion_goal, :int64, 43
        optional :is_higher_average_frequency, :bool, 44
        optional :is_io, :bool, 45
        optional :is_reserved_buying, :int64, 46
        optional :is_trp, :bool, 47
        optional :name, :string, 48
        optional :objective, :int64, 49
        optional :objective_name, :string, 50
        optional :plan_name, :string, 51
        optional :plan_type, :string, 52
        optional :prediction_mode, :int64, 53
        optional :prediction_progress, :int64, 54
        optional :reference_id, :string, 55
        optional :reservation_status, :int64, 56
        optional :start_time, Datetime, 57
        optional :status, :int64, 58
        optional :story_event_type, :int64, 59
        optional :target_audience_size, :int64, 60
        optional :target_cpm, :int64, 61
        optional :target_spec, Targeting, 62
        optional :time_created, Datetime, 63
        optional :time_updated, Datetime, 64
        optional :timezone_id, :int64, 65
        optional :timezone_name, :string, 66
        optional :topline_id, :int64, 67
        optional :video_view_length_constraint, :int64, 68
        optional :viewtag, :string, 69
        optional :action, :string, 70
        optional :budget, :int64, 71
        optional :deal_id, :string, 72
        repeated :destination_ids, :string, 73
        optional :exceptions, :bool, 74
        optional :existing_campaign_id, :string, 75
        optional :grp_buying, :bool, 76
        optional :impression, :int64, 77
        optional :is_full_view, :bool, 78
        optional :is_reach_and_frequency_io_buying, :bool, 79
        optional :num_curve_points, :int64, 80
        optional :reach, :int64, 81
        optional :rf_prediction_id, :string, 82
        optional :rf_prediction_id_to_release, :string, 83
        optional :rf_prediction_id_to_share, :string, 84
        optional :stop_time, :int64, 85
      end
    end
    
    struct ReachFrequencyPredictionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ReachFrequencyPrediction, 1
      end
    end
    end
  end
