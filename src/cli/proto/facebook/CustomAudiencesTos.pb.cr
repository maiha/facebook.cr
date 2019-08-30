## Generated from facebook/CustomAudiencesTos.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CustomAudiencesTos
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :content, :string, 2
        optional :type, :string, 3
      end
    end
    
    struct CustomAudiencesTosArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CustomAudiencesTos, 1
      end
    end
    end
  end
