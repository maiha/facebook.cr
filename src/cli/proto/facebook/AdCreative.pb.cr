## Generated from facebook/AdCreative.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreative
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :actor_id, :string, 3
        optional :applink_treatment, :string, 4
        optional :authorization_category, :string, 5
        optional :auto_update, :bool, 6
        optional :body, :string, 7
        optional :branded_content_sponsor_page_id, :string, 8
        optional :bundle_folder_id, :string, 9
        optional :call_to_action_type, :string, 10
        optional :categorization_criteria, :string, 11
        optional :category_media_source, :string, 12
        optional :destination_set_id, :string, 13
        optional :dynamic_ad_voice, :string, 14
        optional :effective_authorization_category, :string, 15
        optional :effective_instagram_story_id, :string, 16
        optional :effective_object_story_id, :string, 17
        optional :enable_direct_install, :bool, 18
        optional :enable_launch_instant_app, :bool, 19
        optional :image_hash, :string, 20
        optional :image_url, :string, 21
        optional :instagram_actor_id, :string, 22
        optional :instagram_permalink_url, :string, 23
        optional :instagram_story_id, :string, 24
        optional :link_deep_link_url, :string, 25
        optional :link_og_id, :string, 26
        optional :link_url, :string, 27
        optional :messenger_sponsored_message, :string, 28
        optional :name, :string, 29
        optional :object_id, :string, 30
        optional :object_store_url, :string, 31
        optional :object_story_id, :string, 32
        optional :object_type, :string, 33
        optional :object_url, :string, 34
        optional :place_page_set_id, :string, 35
        optional :playable_asset_id, :string, 36
        optional :product_set_id, :string, 37
        optional :status, :string, 38
        optional :template_url, :string, 39
        optional :thumbnail_url, :string, 40
        optional :title, :string, 41
        optional :url_tags, :string, 42
        optional :use_page_actor_override, :bool, 43
        optional :video_id, :string, 44
        optional :image_file, :string, 45
        optional :is_dco_internal, :bool, 46
      end
    end
    
    struct AdCreativeArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreative, 1
      end
    end
    end
  end
