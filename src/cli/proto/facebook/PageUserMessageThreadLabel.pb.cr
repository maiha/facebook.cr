## Generated from facebook/PageUserMessageThreadLabel.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageUserMessageThreadLabel
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :name, :string, 2
      end
    end
    
    struct PageUserMessageThreadLabelArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageUserMessageThreadLabel, 1
      end
    end
    end
  end
