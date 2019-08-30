## Generated from facebook/AdRuleScheduleSpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdRuleScheduleSpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :schedule_type, :string, 1
      end
    end
    
    struct AdRuleScheduleSpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdRuleScheduleSpec, 1
      end
    end
    end
  end
