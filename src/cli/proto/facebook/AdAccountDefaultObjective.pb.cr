## Generated from facebook/AdAccountDefaultObjective.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountDefaultObjective
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :default_objective_for_user, :string, 1
        optional :objective_for_level, :string, 2
      end
    end
    
    struct AdAccountDefaultObjectiveArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountDefaultObjective, 1
      end
    end
    end
  end
