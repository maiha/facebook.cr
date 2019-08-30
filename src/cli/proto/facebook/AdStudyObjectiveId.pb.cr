## Generated from facebook/AdStudyObjectiveId.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdStudyObjectiveId
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        repeated :event_names, :string, 2
        optional :type, :string, 3
      end
    end
    
    struct AdStudyObjectiveIdArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdStudyObjectiveId, 1
      end
    end
    end
  end
