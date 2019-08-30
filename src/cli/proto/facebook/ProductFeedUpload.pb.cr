## Generated from facebook/ProductFeedUpload.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductFeedUpload
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :end_time, Datetime, 2
        optional :error_count, :int64, 3
        optional :filename, :string, 4
        optional :input_method, :string, 5
        optional :num_deleted_items, :int64, 6
        optional :num_detected_items, :int64, 7
        optional :num_invalid_items, :int64, 8
        optional :num_persisted_items, :int64, 9
        optional :start_time, Datetime, 10
        optional :url, :string, 11
        optional :warning_count, :int64, 12
      end
    end
    
    struct ProductFeedUploadArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductFeedUpload, 1
      end
    end
    end
  end
