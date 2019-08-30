## Generated from facebook/ConversionActionQuery.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ConversionActionQuery
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :conversion_id, :string, 1
        repeated :dataset, :string, 2
        repeated :event, :string, 3
        repeated :_event_creator, :string, 4
        repeated :event_type, :string, 5
        repeated :fb_pixel, :string, 6
        repeated :fb_pixel_event, :string, 7
        repeated :leadgen, :string, 8
        repeated :object, :string, 9
        repeated :_object_domain, :string, 10
        repeated :offer, :string, 11
        repeated :_offer_creator, :string, 12
        repeated :offsite_pixel, :string, 13
        repeated :page, :string, 14
        repeated :_page_parent, :string, 15
        repeated :post, :string, 16
        repeated :_post_object, :string, 17
        repeated :_post_object_wall, :string, 18
        repeated :_post_wall, :string, 19
        repeated :question, :string, 20
        repeated :_question_creator, :string, 21
        repeated :response, :string, 22
        repeated :subtype, :string, 23
      end
    end
    
    struct ConversionActionQueryArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ConversionActionQuery, 1
      end
    end
    end
  end
