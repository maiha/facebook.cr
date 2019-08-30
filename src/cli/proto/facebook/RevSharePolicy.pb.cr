## Generated from facebook/RevSharePolicy.proto
require "protobuf"

module Facebook
  module Proto
    
    struct RevSharePolicy
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :policy_id, :string, 1
        optional :policy_name, :string, 2
      end
    end
    
    struct RevSharePolicyArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, RevSharePolicy, 1
      end
    end
    end
  end
