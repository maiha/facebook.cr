## Generated from facebook/PageSavedFilter.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageSavedFilter
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :display_name, :string, 2
        optional :page_id, :string, 3
        optional :section, :string, 4
        optional :time_created, :int64, 5
        optional :time_updated, :int64, 6
      end
    end
    
    struct PageSavedFilterArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageSavedFilter, 1
      end
    end
    end
  end
