## Generated from facebook/AdAccountActivity.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountActivity
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :billing_address_new, :string, 2
        optional :billing_address_old, :string, 3
        optional :created_by, :string, 4
        optional :created_time, Datetime, 5
        optional :credit_status_new, :string, 6
        optional :credit_status_old, :string, 7
        optional :currency_new, :string, 8
        optional :currency_old, :string, 9
        optional :event_time, Datetime, 10
        optional :event_type, :string, 11
        optional :funding_id_new, :string, 12
        optional :funding_id_old, :string, 13
        optional :grace_period_time_new, :int64, 14
        optional :grace_period_time_old, :int64, 15
        optional :manager_id_new, :string, 16
        optional :manager_id_old, :string, 17
        optional :name_new, :string, 18
        optional :name_old, :string, 19
        optional :status_new, :string, 20
        optional :status_old, :string, 21
        optional :terms_new, :int64, 22
        optional :terms_old, :int64, 23
        optional :tier_new, :string, 24
        optional :tier_old, :string, 25
        optional :time_updated_new, Datetime, 26
        optional :time_updated_old, Datetime, 27
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
