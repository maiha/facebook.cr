## Generated from facebook/AdRuleSchedule.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdRuleSchedule
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :days, :int64, 1
        optional :end_minute, :int64, 2
        optional :start_minute, :int64, 3
      end
    end
    
    struct AdRuleScheduleArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdRuleSchedule, 1
      end
    end
    end
  end
