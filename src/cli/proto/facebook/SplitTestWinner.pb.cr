## Generated from facebook/SplitTestWinner.proto
require "protobuf"

module Facebook
  module Proto
    
    struct SplitTestWinner
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :ad_object_level, :string, 1
        optional :winner_ad_object_id, :string, 2
      end
    end
    
    struct SplitTestWinnerArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, SplitTestWinner, 1
      end
    end
    end
  end
