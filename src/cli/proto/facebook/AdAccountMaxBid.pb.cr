## Generated from facebook/AdAccountMaxBid.proto
require "protobuf"

module Facebook
  module Proto
    
    struct AdAccountMaxBid
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :max_bid, :int64, 1
      end
    end
    
    struct AdAccountMaxBidArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, AdAccountMaxBid, 1
      end
    end
    end
  end
