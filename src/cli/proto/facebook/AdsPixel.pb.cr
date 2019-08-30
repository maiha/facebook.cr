## Generated from facebook/AdsPixel.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdsPixel
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        repeated :automatic_matching_fields, :string, 2
        optional :can_proxy, :bool, 3
        optional :code, :string, 4
        optional :creation_time, Datetime, 5
        optional :data_use_setting, :string, 6
        optional :enable_automatic_matching, :bool, 7
        optional :first_party_cookie_status, :string, 8
        optional :is_created_by_business, :bool, 9
        optional :is_unavailable, :bool, 10
        optional :last_fired_time, Datetime, 11
        optional :name, :string, 12
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
