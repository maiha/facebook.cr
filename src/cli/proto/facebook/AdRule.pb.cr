## Generated from facebook/AdRule.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdRule
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :account_id, :string, 2
        optional :created_time, Datetime, 3
        optional :name, :string, 4
        optional :status, :string, 5
        optional :updated_time, Datetime, 6
      end
    end
    
    struct AdRuleArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdRule, 1
      end
    end
    end
  end
