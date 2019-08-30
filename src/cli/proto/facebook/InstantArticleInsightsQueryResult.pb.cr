## Generated from facebook/InstantArticleInsightsQueryResult.proto
require "protobuf"

module Facebook
  module Proto
    
    struct InstantArticleInsightsQueryResult
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :name, :string, 1
        optional :time, Datetime, 2
        optional :value, :string, 3
      end
    end
    
    struct InstantArticleInsightsQueryResultArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, InstantArticleInsightsQueryResult, 1
      end
    end
    end
  end
