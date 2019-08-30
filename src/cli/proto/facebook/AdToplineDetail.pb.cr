## Generated from facebook/AdToplineDetail.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdToplineDetail
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :active_status, :int64, 2
        optional :ad_account_id, :string, 3
        optional :flight_end_date, Datetime, 4
        optional :flight_start_date, Datetime, 5
        optional :io_number, :int64, 6
        optional :line_number, :int64, 7
        optional :price, :double, 8
        optional :quantity, :double, 9
        optional :sf_detail_line_id, :string, 10
        optional :subline_id, :string, 11
        optional :targets, :string, 12
        optional :time_created, Datetime, 13
        optional :time_updated, Datetime, 14
      end
    end
    
    struct AdToplineDetailArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdToplineDetail, 1
      end
    end
    end
  end
