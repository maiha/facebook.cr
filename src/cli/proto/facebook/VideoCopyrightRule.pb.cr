## Generated from facebook/VideoCopyrightRule.proto
require "protobuf"

module Facebook
  module Proto
    
    struct VideoCopyrightRule
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        repeated :copyrights, :string, 2
        optional :created_date, Datetime, 3
        optional :is_in_migration, :bool, 4
        optional :name, :string, 5
      end
    end
    
    struct VideoCopyrightRuleArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, VideoCopyrightRule, 1
      end
    end
    end
  end
