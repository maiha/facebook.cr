## Generated from facebook/AdNetworkAnalyticsAsyncQueryResult.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdNetworkAnalyticsAsyncQueryResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :query_id, :string, 1
        optional :status, :string, 2
      end
    end
    
    struct AdNetworkAnalyticsAsyncQueryResultArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdNetworkAnalyticsAsyncQueryResult, 1
      end
    end
    end
  end
