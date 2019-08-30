## Generated from facebook/AdStudyCell.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdStudyCell
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :ad_entities_count, :int64, 2
        optional :control_percentage, :double, 3
        optional :name, :string, 4
        optional :treatment_percentage, :double, 5
      end
    end
    
    struct AdStudyCellArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdStudyCell, 1
      end
    end
    end
  end
