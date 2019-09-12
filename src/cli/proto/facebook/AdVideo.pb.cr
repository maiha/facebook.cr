## Generated from facebook/AdVideo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdVideo
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        repeated :ad_breaks, :int64, 3
        optional :backdated_time, Datetime, 4
        optional :backdated_time_granularity, :string, 5
        optional :content_category, :string, 6
        repeated :content_tags, :string, 7
        optional :copyright_monitoring_status, :string, 8
        optional :created_time, Datetime, 9
        repeated :custom_labels, :string, 10
        optional :description, :string, 11
        optional :embed_html, :string, 12
        optional :embeddable, :bool, 13
        optional :icon, :string, 14
        optional :is_crosspost_video, :bool, 15
        optional :is_crossposting_eligible, :bool, 16
        optional :is_episode, :bool, 17
        optional :is_instagram_eligible, :bool, 18
        optional :is_reference_only, :bool, 19
        optional :length, :double, 20
        optional :live_audience_count, :int64, 21
        optional :live_status, :string, 22
        optional :permalink_url, :string, 23
        optional :picture, :string, 24
        optional :premiere_living_room_status, :string, 25
        optional :published, :bool, 26
        optional :scheduled_publish_time, Datetime, 27
        optional :source, :string, 28
        optional :spherical, :bool, 29
        optional :title, :string, 30
        optional :universal_video_id, :string, 31
        optional :updated_time, Datetime, 32
        optional :adaptive_type, :string, 33
        optional :animated_effect_id, :int64, 34
        optional :application_id, :string, 35
        optional :asked_fun_fact_prompt_id, :int64, 36
        optional :attribution_app_id, :string, 37
        optional :audio_story_wave_animation_handle, :string, 38
        optional :chunk_session_id, :string, 39
        optional :composer_entry_picker, :string, 40
        optional :composer_entry_point, :string, 41
        optional :composer_entry_time, :int64, 42
        optional :composer_session_events_log, :string, 43
        optional :composer_session_id, :string, 44
        optional :composer_source_surface, :string, 45
        optional :composer_type, :string, 46
        optional :container_type, :string, 47
        optional :end_offset, :int64, 48
        optional :fbuploader_video_file_chunk, :string, 49
        optional :file_size, :int64, 50
        optional :file_url, :string, 51
        optional :fisheye_video_cropped, :bool, 52
        optional :formatting, :string, 53
        optional :fov, :int64, 54
        optional :front_z_rotation, :double, 55
        optional :fun_fact_prompt_id, :int64, 56
        optional :fun_fact_toastee_id, :int64, 57
        repeated :guide, Int64Array, 58
        optional :guide_enabled, :bool, 59
        optional :has_nickname, :bool, 60
        optional :holiday_card, :string, 61
        optional :initial_heading, :int64, 62
        optional :initial_pitch, :int64, 63
        optional :instant_game_entry_point_data, :string, 64
        optional :is_boost_intended, :bool, 65
        optional :is_group_linking_post, :bool, 66
        optional :is_voice_clip, :bool, 67
        optional :location_source_id, :string, 68
        optional :name, :string, 69
        optional :offer_like_post_id, :int64, 70
        optional :og_action_type_id, :string, 71
        optional :og_icon_id, :string, 72
        optional :og_object_id, :string, 73
        optional :og_phrase, :string, 74
        optional :og_suggestion_mechanism, :string, 75
        optional :original_fov, :int64, 76
        optional :original_projection_type, :string, 77
        optional :publish_event_id, :int64, 78
        optional :react_mode_metadata, :string, 79
        optional :referenced_sticker_id, :string, 80
        optional :replace_video_id, :string, 81
        optional :sales_promo_id, :int64, 82
        optional :start_offset, :int64, 83
        optional :swap_mode, :string, 84
        optional :text_format_metadata, :string, 85
        optional :throwback_camera_roll_media, :string, 86
        optional :time_since_original_post, :int64, 87
        optional :transcode_setting_properties, :string, 88
        optional :unpublished_content_type, :string, 89
        optional :upload_phase, :string, 90
        optional :upload_session_id, :string, 91
        optional :upload_setting_properties, :string, 92
        optional :video_file_chunk, :string, 93
        optional :video_start_time_ms, :int64, 94
        optional :waterfall_id, :string, 95
        optional :creative_folder_id, :string, 96
        optional :validation_ad_placement, :string, 97
      end
    end
    
    struct AdVideoArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdVideo, 1
      end
    end
    end
  end
