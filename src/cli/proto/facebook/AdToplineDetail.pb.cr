## Generated from facebook/AdToplineDetail.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdToplineDetail
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :active_status, :int64, 3
        optional :ad_account_id, :string, 4
        optional :flight_end_date, Datetime, 5
        optional :flight_start_date, Datetime, 6
        optional :io_number, :int64, 7
        optional :line_number, :int64, 8
        optional :price, :double, 9
        optional :quantity, :double, 10
        optional :sf_detail_line_id, :string, 11
        optional :subline_id, :string, 12
        optional :targets, :string, 13
        optional :time_created, Datetime, 14
        optional :time_updated, Datetime, 15
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
