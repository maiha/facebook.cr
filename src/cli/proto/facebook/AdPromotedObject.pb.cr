## Generated from facebook/AdPromotedObject.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdPromotedObject
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :application_id, :string, 1
        optional :custom_conversion_id, :string, 2
        optional :custom_event_str, :string, 3
        optional :custom_event_type, :string, 4
        optional :event_id, :string, 5
        optional :fundraiser_campaign_id, :string, 6
        optional :object_store_url, :string, 7
        optional :offer_id, :string, 8
        optional :offline_conversion_data_set_id, :string, 9
        optional :page_id, :string, 10
        optional :pixel_aggregation_rule, :string, 11
        optional :pixel_id, :string, 12
        optional :pixel_rule, :string, 13
        optional :place_page_set_id, :string, 14
        optional :product_catalog_id, :string, 15
        optional :product_item_id, :string, 16
        optional :product_set_id, :string, 17
        optional :retention_days, :string, 18
      end
    end
    
    struct AdPromotedObjectArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdPromotedObject, 1
      end
    end
    end
  end
