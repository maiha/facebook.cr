## Generated from facebook/AdNetworkAnalyticsSyncQueryResult.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdNetworkAnalyticsSyncQueryResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :query_id, :string, 1
      end
    end
    
    struct AdNetworkAnalyticsSyncQueryResultArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdNetworkAnalyticsSyncQueryResult, 1
      end
    end
    end
  end
