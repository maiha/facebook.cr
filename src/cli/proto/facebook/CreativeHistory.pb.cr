## Generated from facebook/CreativeHistory.proto
require "protobuf"

module Facebook
  module Proto
    
    struct CreativeHistory
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :creative_fingerprint, :int64, 1
      end
    end
    
    struct CreativeHistoryArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, CreativeHistory, 1
      end
    end
    end
  end
