## Generated from facebook/AdStudyObjective.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdStudyObjective
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :is_primary, :bool, 2
        optional :last_updated_results, :string, 3
        optional :name, :string, 4
        repeated :results, :string, 5
        optional :type, :string, 6
      end
    end
    
    struct AdStudyObjectiveArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdStudyObjective, 1
      end
    end
    end
  end
