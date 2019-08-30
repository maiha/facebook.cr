## Generated from facebook/Referral.proto
require "protobuf"

module Facebook
  module Proto
    
    struct Referral
      include Protobuf::Message
      
      contract_of "proto2" do
        optional :id, :string, 1
        optional :invite_limit, :int64, 2
        optional :messenger_cta, :string, 3
        optional :messenger_promotion_text, :string, 4
        optional :namespace, :string, 5
        optional :need_promo_code, :bool, 6
        optional :offer_origin, :string, 7
        optional :promotion_text, :string, 8
        optional :receiver_benefits_text, :string, 9
        optional :referral_link_uri, :string, 10
        optional :sender_benefits_text, :string, 11
      end
    end
    
    struct ReferralArray
      include Protobuf::Message
      
      contract_of "proto2" do
        repeated :array, Referral, 1
      end
    end
    end
  end
