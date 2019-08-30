## Generated from facebook/AdVideo.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdVideo
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        repeated :ad_breaks, :int64, 2
        optional :backdated_time, Datetime, 3
        optional :backdated_time_granularity, :string, 4
        optional :content_category, :string, 5
        repeated :content_tags, :string, 6
        optional :copyright_monitoring_status, :string, 7
        optional :created_time, Datetime, 8
        repeated :custom_labels, :string, 9
        optional :description, :string, 10
        optional :embed_html, :string, 11
        optional :embeddable, :bool, 12
        optional :icon, :string, 13
        optional :is_crosspost_video, :bool, 14
        optional :is_crossposting_eligible, :bool, 15
        optional :is_episode, :bool, 16
        optional :is_instagram_eligible, :bool, 17
        optional :is_reference_only, :bool, 18
        optional :length, :double, 19
        optional :live_audience_count, :int64, 20
        optional :live_status, :string, 21
        optional :permalink_url, :string, 22
        optional :picture, :string, 23
        optional :premiere_living_room_status, :string, 24
        optional :published, :bool, 25
        optional :scheduled_publish_time, Datetime, 26
        optional :source, :string, 27
        optional :spherical, :bool, 28
        optional :title, :string, 29
        optional :universal_video_id, :string, 30
        optional :updated_time, Datetime, 31
        optional :adaptive_type, :string, 32
        optional :animated_effect_id, :int64, 33
        optional :application_id, :string, 34
        optional :asked_fun_fact_prompt_id, :int64, 35
        optional :attribution_app_id, :string, 36
        optional :audio_story_wave_animation_handle, :string, 37
        optional :chunk_session_id, :string, 38
        optional :composer_entry_picker, :string, 39
        optional :composer_entry_point, :string, 40
        optional :composer_entry_time, :int64, 41
        optional :composer_session_events_log, :string, 42
        optional :composer_session_id, :string, 43
        optional :composer_source_surface, :string, 44
        optional :composer_type, :string, 45
        optional :container_type, :string, 46
        optional :end_offset, :int64, 47
        optional :fbuploader_video_file_chunk, :string, 48
        optional :file_size, :int64, 49
        optional :file_url, :string, 50
        optional :fisheye_video_cropped, :bool, 51
        optional :formatting, :string, 52
        optional :fov, :int64, 53
        optional :front_z_rotation, :double, 54
        optional :fun_fact_prompt_id, :int64, 55
        optional :fun_fact_toastee_id, :int64, 56
        repeated :guide, Int64Array, 57
        optional :guide_enabled, :bool, 58
        optional :has_nickname, :bool, 59
        optional :holiday_card, :string, 60
        optional :initial_heading, :int64, 61
        optional :initial_pitch, :int64, 62
        optional :instant_game_entry_point_data, :string, 63
        optional :is_boost_intended, :bool, 64
        optional :is_group_linking_post, :bool, 65
        optional :is_voice_clip, :bool, 66
        optional :location_source_id, :string, 67
        optional :name, :string, 68
        optional :offer_like_post_id, :int64, 69
        optional :og_action_type_id, :string, 70
        optional :og_icon_id, :string, 71
        optional :og_object_id, :string, 72
        optional :og_phrase, :string, 73
        optional :og_suggestion_mechanism, :string, 74
        optional :original_fov, :int64, 75
        optional :original_projection_type, :string, 76
        optional :publish_event_id, :int64, 77
        optional :react_mode_metadata, :string, 78
        optional :referenced_sticker_id, :string, 79
        optional :replace_video_id, :string, 80
        optional :sales_promo_id, :int64, 81
        optional :start_offset, :int64, 82
        optional :swap_mode, :string, 83
        optional :text_format_metadata, :string, 84
        optional :throwback_camera_roll_media, :string, 85
        optional :time_since_original_post, :int64, 86
        optional :transcode_setting_properties, :string, 87
        optional :unpublished_content_type, :string, 88
        optional :upload_phase, :string, 89
        optional :upload_session_id, :string, 90
        optional :upload_setting_properties, :string, 91
        optional :video_file_chunk, :string, 92
        optional :video_start_time_ms, :int64, 93
        optional :waterfall_id, :string, 94
        optional :creative_folder_id, :string, 95
        optional :validation_ad_placement, :string, 96
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
