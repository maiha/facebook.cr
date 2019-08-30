## Generated from facebook/OpenGraphObject.proto
require "protobuf"

module Facebook
  module Proto
    
    struct OpenGraphObject
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :created_time, Datetime, 2
        optional :description, :string, 3
        optional :determiner, :string, 4
        optional :is_scraped, :bool, 5
        optional :post_action_id, :string, 6
        repeated :see_also, :string, 7
        optional :site_name, :string, 8
        optional :title, :string, 9
        optional :type, :string, 10
        optional :updated_time, Datetime, 11
      end
    end
    
    struct OpenGraphObjectArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, OpenGraphObject, 1
      end
    end
    end
  end
