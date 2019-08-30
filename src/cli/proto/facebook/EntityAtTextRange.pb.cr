## Generated from facebook/EntityAtTextRange.proto
require "protobuf"

module Facebook
  module Proto
    
    struct EntityAtTextRange
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :length, :int64, 2
        optional :name, :string, 3
        optional :offset, :int64, 4
        optional :type, :string, 5
      end
    end
    
    struct EntityAtTextRangeArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, EntityAtTextRange, 1
      end
    end
    end
  end
