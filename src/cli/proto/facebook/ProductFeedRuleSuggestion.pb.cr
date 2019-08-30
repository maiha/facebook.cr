## Generated from facebook/ProductFeedRuleSuggestion.proto
require "protobuf"

module Facebook
  module Proto
    
    struct ProductFeedRuleSuggestion
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :attribute, :string, 1
        optional :type, :string, 2
      end
    end
    
    struct ProductFeedRuleSuggestionArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, ProductFeedRuleSuggestion, 1
      end
    end
    end
  end
