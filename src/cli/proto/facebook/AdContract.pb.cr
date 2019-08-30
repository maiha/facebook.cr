## Generated from facebook/AdContract.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdContract
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :account_id, :string, 1
        optional :account_mgr_fbid, :string, 2
        optional :account_mgr_name, :string, 3
        optional :adops_person_name, :string, 4
        optional :advertiser_address_fbid, :string, 5
        optional :advertiser_fbid, :string, 6
        optional :advertiser_name, :string, 7
        optional :agency_discount, :double, 8
        optional :agency_name, :string, 9
        optional :bill_to_address_fbid, :string, 10
        optional :bill_to_fbid, :string, 11
        optional :campaign_name, :string, 12
        optional :created_by, :string, 13
        optional :created_date, :int64, 14
        optional :customer_io, :string, 15
        optional :io_number, :int64, 16
        optional :io_terms, :string, 17
        optional :io_type, :string, 18
        optional :last_updated_by, :string, 19
        optional :last_updated_date, :int64, 20
        optional :max_end_date, :int64, 21
        optional :mdc_fbid, :string, 22
        optional :media_plan_number, :string, 23
        optional :min_start_date, :int64, 24
        optional :msa_contract, :string, 25
        optional :payment_terms, :string, 26
        optional :rev_hold_flag, :bool, 27
        optional :rev_hold_released_by, :int64, 28
        optional :rev_hold_released_on, :int64, 29
        optional :salesrep_fbid, :string, 30
        optional :salesrep_name, :string, 31
        optional :sold_to_address_fbid, :string, 32
        optional :sold_to_fbid, :string, 33
        optional :status, :string, 34
        optional :subvertical, :string, 35
        optional :thirdparty_billed, :int64, 36
        optional :thirdparty_password, :string, 37
        optional :thirdparty_uid, :string, 38
        optional :thirdparty_url, :string, 39
        optional :vat_country, :string, 40
        optional :version, :int64, 41
        optional :vertical, :string, 42
      end
    end
    
    struct AdContractArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdContract, 1
      end
    end
    end
  end
