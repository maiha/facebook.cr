## Generated from facebook/AdAccountActivity.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountActivity
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :billing_address_new, :string, 3
        optional :billing_address_old, :string, 4
        optional :created_by, :string, 5
        optional :created_time, Datetime, 6
        optional :credit_status_new, :string, 7
        optional :credit_status_old, :string, 8
        optional :currency_new, :string, 9
        optional :currency_old, :string, 10
        optional :event_time, Datetime, 11
        optional :event_type, :string, 12
        optional :funding_id_new, :string, 13
        optional :funding_id_old, :string, 14
        optional :grace_period_time_new, :int64, 15
        optional :grace_period_time_old, :int64, 16
        optional :manager_id_new, :string, 17
        optional :manager_id_old, :string, 18
        optional :name_new, :string, 19
        optional :name_old, :string, 20
        optional :status_new, :string, 21
        optional :status_old, :string, 22
        optional :terms_new, :int64, 23
        optional :terms_old, :int64, 24
        optional :tier_new, :string, 25
        optional :tier_old, :string, 26
        optional :time_updated_new, Datetime, 27
        optional :time_updated_old, Datetime, 28
      end
    end
    
    struct AdAccountActivityArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountActivity, 1
      end
    end
    end
  end
