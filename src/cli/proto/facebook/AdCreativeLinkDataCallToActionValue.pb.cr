## Generated from facebook/AdCreativeLinkDataCallToActionValue.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdCreativeLinkDataCallToActionValue
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :app_destination, :string, 1
        optional :app_link, :string, 2
        optional :application, :string, 3
        optional :event_id, :string, 4
        optional :lead_gen_form_id, :string, 5
        optional :link, :string, 6
        optional :link_caption, :string, 7
        optional :link_format, :string, 8
        optional :page, :string, 9
        optional :product_link, :string, 10
        optional :whatsapp_number, :string, 11
      end
    end
    
    struct AdCreativeLinkDataCallToActionValueArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdCreativeLinkDataCallToActionValue, 1
      end
    end
    end
  end
