## Generated from facebook/NativeOffer.proto
require "protobuf"

module Facebook
  module Proto
    
    struct NativeOffer
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :barcode_photo, :string, 2
        optional :barcode_photo_uri, :string, 3
        optional :barcode_type, :string, 4
        optional :barcode_value, :string, 5
        optional :block_reshares, :bool, 6
        optional :details, :string, 7
        optional :disable_location, :bool, 8
        optional :expiration_time, Datetime, 9
        optional :instore_code, :string, 10
        optional :location_type, :string, 11
        optional :max_save_count, :int64, 12
        optional :online_code, :string, 13
        optional :page_set_id, :string, 14
        optional :redemption_code, :string, 15
        optional :redemption_link, :string, 16
        optional :save_count, :int64, 17
        optional :terms, :string, 18
        optional :title, :string, 19
        optional :total_unique_codes, :string, 20
        optional :unique_codes, :string, 21
        optional :unique_codes_file_code_type, :string, 22
        optional :unique_codes_file_name, :string, 23
        optional :unique_codes_file_upload_status, :string, 24
      end
    end
    
    struct NativeOfferArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, NativeOffer, 1
      end
    end
    end
  end
