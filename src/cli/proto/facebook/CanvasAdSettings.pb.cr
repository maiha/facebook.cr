## Generated from facebook/CanvasAdSettings.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CanvasAdSettings
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :is_canvas_collection_eligible, :bool, 1
        optional :lead_form_created_time, :int64, 2
        optional :lead_form_name, :string, 3
        optional :lead_gen_form_id, :string, 4
        optional :leads_count, :int64, 5
        optional :product_set_id, :string, 6
        optional :use_retailer_item_ids, :bool, 7
      end
    end
    
    struct CanvasAdSettingsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CanvasAdSettings, 1
      end
    end
    end
  end
