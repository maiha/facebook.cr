## Generated from facebook/BusinessAdvertisableApplicationsResult.proto
require "protobuf"

module Facebook
  module Proto
    
    struct BusinessAdvertisableApplicationsResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :are_app_events_unavailable, :bool, 2
        optional :has_insight_permission, :bool, 3
        optional :name, :string, 4
        optional :photo_url, :string, 5
      end
    end
    
    struct BusinessAdvertisableApplicationsResultArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, BusinessAdvertisableApplicationsResult, 1
      end
    end
    end
  end
