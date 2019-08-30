## Generated from facebook/PagePost.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PagePost
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        repeated :actions, :string, 2
        repeated :allowed_advertising_objectives, :string, 3
        optional :backdated_time, Datetime, 4
        optional :can_reply_privately, :bool, 5
        repeated :child_attachments, :string, 6
        optional :comments_mirroring_domain, :string, 7
        optional :created_time, Datetime, 8
        optional :expanded_height, :int64, 9
        optional :expanded_width, :int64, 10
        optional :full_picture, :string, 11
        optional :height, :int64, 12
        optional :icon, :string, 13
        optional :instagram_eligibility, :string, 14
        optional :is_app_share, :bool, 15
        optional :is_eligible_for_promotion, :bool, 16
        optional :is_expired, :bool, 17
        optional :is_hidden, :bool, 18
        optional :is_instagram_eligible, :bool, 19
        optional :is_popular, :bool, 20
        optional :is_published, :bool, 21
        optional :is_spherical, :bool, 22
        optional :message, :string, 23
        repeated :message_tags, :string, 24
        optional :multi_share_end_card, :bool, 25
        optional :multi_share_optimized, :bool, 26
        optional :parent_id, :string, 27
        optional :picture, :string, 28
        optional :promotable_id, :string, 29
        optional :promotion_status, :string, 30
        repeated :properties, :string, 31
        optional :scheduled_publish_time, :double, 32
        optional :status_type, :string, 33
        optional :story, :string, 34
        repeated :story_tags, :string, 35
        optional :subscribed, :bool, 36
        optional :timeline_visibility, :string, 37
        optional :updated_time, Datetime, 38
        repeated :video_buying_eligibility, :string, 39
        optional :width, :int64, 40
      end
    end
    
    struct PagePostArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PagePost, 1
      end
    end
    end
  end
