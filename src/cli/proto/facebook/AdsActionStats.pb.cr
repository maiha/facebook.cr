## Generated from facebook/AdsActionStats.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdsActionStats
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :_1d_click, :string, 1
        optional :_1d_view, :string, 2
        optional :_28d_click, :string, 3
        optional :_28d_view, :string, 4
        optional :_7d_click, :string, 5
        optional :_7d_view, :string, 6
        optional :action_canvas_component_id, :string, 7
        optional :action_canvas_component_name, :string, 8
        optional :action_carousel_card_id, :string, 9
        optional :action_carousel_card_name, :string, 10
        optional :action_converted_product_id, :string, 11
        optional :action_destination, :string, 12
        optional :action_device, :string, 13
        optional :action_event_channel, :string, 14
        optional :action_link_click_destination, :string, 15
        optional :action_location_code, :string, 16
        optional :action_reaction, :string, 17
        optional :action_target_id, :string, 18
        optional :action_type, :string, 19
        optional :action_video_asset_id, :string, 20
        optional :action_video_sound, :string, 21
        optional :action_video_type, :string, 22
        optional :inline, :string, 23
        optional :interactive_component_sticker_id, :string, 24
        optional :interactive_component_sticker_response, :string, 25
        optional :value, :string, 26
      end
    end
    
    struct AdsActionStatsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdsActionStats, 1
      end
    end
    end
  end
