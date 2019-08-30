## Generated from facebook/ProductEventStat.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductEventStat
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :date_start, :string, 1
        optional :date_stop, :string, 2
        optional :device_type, :string, 3
        optional :event, :string, 4
        optional :total_content_ids_matched_other_catalogs, :int64, 5
        optional :total_matched_content_ids, :int64, 6
        optional :total_unmatched_content_ids, :int64, 7
        optional :unique_content_ids_matched_other_catalogs, :int64, 8
        optional :unique_matched_content_ids, :int64, 9
        optional :unique_unmatched_content_ids, :int64, 10
      end
    end
    
    struct ProductEventStatArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductEventStat, 1
      end
    end
    end
  end
