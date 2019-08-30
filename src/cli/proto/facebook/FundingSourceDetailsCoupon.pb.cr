## Generated from facebook/FundingSourceDetailsCoupon.proto
require "protobuf"

module Facebook
  module Proto
    
    struct FundingSourceDetailsCoupon
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :amount, :int64, 1
        optional :currency, :string, 2
        optional :display_amount, :string, 3
        optional :expiration, Datetime, 4
      end
    end
    
    struct FundingSourceDetailsCouponArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, FundingSourceDetailsCoupon, 1
      end
    end
    end
  end
