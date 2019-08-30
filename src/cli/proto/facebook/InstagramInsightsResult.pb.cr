## Generated from facebook/InstagramInsightsResult.proto
require "protobuf"

module Facebook
  module Proto
    
    struct InstagramInsightsResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :description, :string, 2
        optional :name, :string, 3
        optional :period, :string, 4
        optional :title, :string, 5
      end
    end
    
    struct InstagramInsightsResultArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, InstagramInsightsResult, 1
      end
    end
    end
  end
