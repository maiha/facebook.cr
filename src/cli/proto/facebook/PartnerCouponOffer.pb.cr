## Generated from facebook/PartnerCouponOffer.proto
require "protobuf"

module Facebook
  module Proto
    
    struct PartnerCouponOffer
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :claim_by, Datetime, 2
        optional :currency, :string, 3
        optional :expiration_days, :int64, 4
        optional :minimum_spend, :int64, 5
        optional :offer_amount, :int64, 6
      end
    end
    
    struct PartnerCouponOfferArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, PartnerCouponOffer, 1
      end
    end
    end
  end
