## Generated from facebook/InsightsResult.proto
require "protobuf"

module Facebook
  module Proto
    
    struct InsightsResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :description, :string, 2
        optional :description_from_api_doc, :string, 3
        optional :name, :string, 4
        optional :period, :string, 5
        optional :title, :string, 6
      end
    end
    
    struct InsightsResultArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, InsightsResult, 1
      end
    end
    end
  end
