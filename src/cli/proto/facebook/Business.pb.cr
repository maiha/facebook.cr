## Generated from facebook/Business.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Business
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :block_offline_analytics, :bool, 2
        optional :created_time, Datetime, 3
        optional :extended_updated_time, Datetime, 4
        optional :is_hidden, :bool, 5
        optional :is_instagram_enabled_in_fb_analytics, :bool, 6
        optional :link, :string, 7
        optional :name, :string, 8
        optional :payment_account_id, :string, 9
        optional :profile_picture_uri, :string, 10
        optional :timezone_id, :int64, 11
        optional :two_factor_type, :string, 12
        optional :updated_time, Datetime, 13
        optional :verification_status, :string, 14
        optional :vertical_id, :int64, 15
      end
    end
    
    struct BusinessArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Business, 1
      end
    end
    end
  end
