## Generated from facebook/DynamicContentSet.proto
require "protobuf"

module Facebook
  module Proto
    
    struct DynamicContentSet
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :business_id, :string, 2
        optional :name, :string, 3
      end
    end
    
    struct DynamicContentSetArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, DynamicContentSet, 1
      end
    end
    end
  end
