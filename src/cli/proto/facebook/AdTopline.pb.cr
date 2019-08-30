## Generated from facebook/AdTopline.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdTopline
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :client_approval_date, Datetime, 3
        optional :created_by, :string, 4
        optional :created_date, Datetime, 5
        optional :description, :string, 6
        optional :flight_end_date, Datetime, 7
        optional :flight_start_date, Datetime, 8
        optional :func_cap_amount, :string, 9
        optional :func_cap_amount_with_offset, :string, 10
        optional :func_line_amount, :string, 11
        optional :func_line_amount_with_offset, :string, 12
        optional :func_price, :string, 13
        optional :func_price_with_offset, :string, 14
        optional :gender, :string, 15
        optional :impressions, :int64, 16
        optional :io_number, :int64, 17
        optional :is_bonus_line, :int64, 18
        optional :keywords, :string, 19
        optional :last_updated_by, :string, 20
        optional :last_updated_date, Datetime, 21
        optional :line_number, :int64, 22
        optional :line_position, :int64, 23
        optional :line_type, :string, 24
        optional :location, :string, 25
        optional :max_age, :string, 26
        optional :max_budget, :string, 27
        optional :min_age, :string, 28
        optional :price_per_trp, :string, 29
        optional :product_type, :string, 30
        optional :rev_assurance_approval_date, Datetime, 31
        optional :targets, :string, 32
        optional :trp_updated_time, :int64, 33
        optional :trp_value, :string, 34
        optional :uom, :string, 35
      end
    end
    
    struct AdToplineArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdTopline, 1
      end
    end
    end
  end
