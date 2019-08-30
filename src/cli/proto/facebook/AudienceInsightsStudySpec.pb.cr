## Generated from facebook/AudienceInsightsStudySpec.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AudienceInsightsStudySpec
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :creation_time, :int64, 1
        optional :end_time, :int64, 2
        optional :start_time, :int64, 3
        optional :status, :string, 4
      end
    end
    
    struct AudienceInsightsStudySpecArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AudienceInsightsStudySpec, 1
      end
    end
    end
  end
