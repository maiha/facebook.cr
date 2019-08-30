## Generated from facebook/ProductFeed.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductFeed
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :country, :string, 2
        optional :created_time, Datetime, 3
        optional :default_currency, :string, 4
        optional :deletion_enabled, :bool, 5
        optional :delimiter, :string, 6
        optional :encoding, :string, 7
        optional :file_name, :string, 8
        optional :name, :string, 9
        optional :override_type, :string, 10
        optional :product_count, :int64, 11
        optional :quoted_fields_mode, :string, 12
        optional :feed_type, :string, 13
        repeated :rules, :string, 14
      end
    end
    
    struct ProductFeedArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductFeed, 1
      end
    end
    end
  end
