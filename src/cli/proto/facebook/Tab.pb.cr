## Generated from facebook/Tab.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Tab
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :custom_image_url, :string, 2
        optional :custom_name, :string, 3
        optional :image_url, :string, 4
        optional :is_non_connection_landing_tab, :bool, 5
        optional :is_permanent, :bool, 6
        optional :link, :string, 7
        optional :name, :string, 8
        optional :position, :int64, 9
      end
    end
    
    struct TabArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Tab, 1
      end
    end
    end
  end
