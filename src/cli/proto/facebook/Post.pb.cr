## Generated from facebook/Post.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Post
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        repeated :actions, :string, 2
        repeated :allowed_advertising_objectives, :string, 3
        optional :backdated_time, Datetime, 4
        optional :can_reply_privately, :bool, 5
        optional :caption, :string, 6
        repeated :child_attachments, :string, 7
        optional :comments_mirroring_domain, :string, 8
        optional :created_time, Datetime, 9
        optional :description, :string, 10
        optional :expanded_height, :int64, 11
        optional :expanded_width, :int64, 12
        optional :full_picture, :string, 13
        optional :height, :int64, 14
        optional :icon, :string, 15
        optional :instagram_eligibility, :string, 16
        optional :is_app_share, :bool, 17
        optional :is_eligible_for_promotion, :bool, 18
        optional :is_expired, :bool, 19
        optional :is_hidden, :bool, 20
        optional :is_instagram_eligible, :bool, 21
        optional :is_popular, :bool, 22
        optional :is_published, :bool, 23
        optional :is_spherical, :bool, 24
        optional :link, :string, 25
        optional :message, :string, 26
        repeated :message_tags, :string, 27
        optional :multi_share_end_card, :bool, 28
        optional :multi_share_optimized, :bool, 29
        optional :name, :string, 30
        optional :object_id, :string, 31
        optional :parent_id, :string, 32
        optional :picture, :string, 33
        optional :promotable_id, :string, 34
        optional :promotion_status, :string, 35
        repeated :properties, :string, 36
        optional :scheduled_publish_time, :double, 37
        optional :source, :string, 38
        optional :status_type, :string, 39
        optional :story, :string, 40
        repeated :story_tags, :string, 41
        optional :subscribed, :bool, 42
        optional :timeline_visibility, :string, 43
        optional :type, :string, 44
        optional :updated_time, Datetime, 45
        repeated :video_buying_eligibility, :string, 46
        optional :width, :int64, 47
      end
    end
    
    struct PostArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Post, 1
      end
    end
    end
  end
