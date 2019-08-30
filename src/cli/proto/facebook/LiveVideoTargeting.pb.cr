## Generated from facebook/LiveVideoTargeting.proto
require "protobuf"

module Facebook
  module Proto
    
    struct LiveVideoTargeting
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :age_max, :int64, 1
        optional :age_min, :int64, 2
        repeated :excluded_countries, :string, 3
      end
    end
    
    struct LiveVideoTargetingArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, LiveVideoTargeting, 1
      end
    end
    end
  end
