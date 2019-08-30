## Generated from facebook/AdRuleFilters.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdRuleFilters
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :field, :string, 1
        optional :operator, :string, 2
      end
    end
    
    struct AdRuleFiltersArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdRuleFilters, 1
      end
    end
    end
  end
