## Generated from facebook/PageLabel.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PageLabel
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :creation_time, Datetime, 2
        optional :name, :string, 3
      end
    end
    
    struct PageLabelArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PageLabel, 1
      end
    end
    end
  end
