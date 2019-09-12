## Generated from facebook/AdsPixel.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdsPixel
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        repeated :automatic_matching_fields, :string, 3
        optional :can_proxy, :bool, 4
        optional :code, :string, 5
        optional :creation_time, Datetime, 6
        optional :data_use_setting, :string, 7
        optional :enable_automatic_matching, :bool, 8
        optional :first_party_cookie_status, :string, 9
        optional :is_created_by_business, :bool, 10
        optional :is_unavailable, :bool, 11
        optional :last_fired_time, Datetime, 12
        optional :name, :string, 13
      end
    end
    
    struct AdsPixelArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdsPixel, 1
      end
    end
    end
  end
