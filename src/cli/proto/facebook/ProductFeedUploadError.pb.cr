## Generated from facebook/ProductFeedUploadError.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductFeedUploadError
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        repeated :affected_surfaces, :string, 2
        optional :description, :string, 3
        optional :error_type, :string, 4
        optional :severity, :string, 5
        optional :summary, :string, 6
        optional :total_count, :int64, 7
      end
    end
    
    struct ProductFeedUploadErrorArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductFeedUploadError, 1
      end
    end
    end
  end
