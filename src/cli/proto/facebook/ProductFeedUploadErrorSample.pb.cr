## Generated from facebook/ProductFeedUploadErrorSample.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductFeedUploadErrorSample
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :retailer_id, :string, 2
        optional :row_number, :int64, 3
      end
    end
    
    struct ProductFeedUploadErrorSampleArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductFeedUploadErrorSample, 1
      end
    end
    end
  end
