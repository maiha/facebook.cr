## Generated from facebook/FlexibleTargeting.proto
require "protobuf"

module Facebook
  module Proto
    
    struct FlexibleTargeting
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :college_years, :int64, 1
        repeated :education_statuses, :int64, 2
        repeated :interested_in, :int64, 3
        repeated :relationship_statuses, :int64, 4
      end
    end
    
    struct FlexibleTargetingArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, FlexibleTargeting, 1
      end
    end
    end
  end
