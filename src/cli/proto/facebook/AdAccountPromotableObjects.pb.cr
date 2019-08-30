## Generated from facebook/AdAccountPromotableObjects.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountPromotableObjects
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :promotable_app_ids, :string, 1
        repeated :promotable_page_ids, :string, 2
        repeated :promotable_urls, :string, 3
      end
    end
    
    struct AdAccountPromotableObjectsArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountPromotableObjects, 1
      end
    end
    end
  end
