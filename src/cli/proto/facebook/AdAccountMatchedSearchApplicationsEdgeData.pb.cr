## Generated from facebook/AdAccountMatchedSearchApplicationsEdgeData.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountMatchedSearchApplicationsEdgeData
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :app_id, :string, 1
        optional :icon_url, :string, 2
        optional :name, :string, 3
        optional :search_source_store, :string, 4
        optional :store, :string, 5
        optional :unique_id, :string, 6
        optional :url, :string, 7
      end
    end
    
    struct AdAccountMatchedSearchApplicationsEdgeDataArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountMatchedSearchApplicationsEdgeData, 1
      end
    end
    end
  end
