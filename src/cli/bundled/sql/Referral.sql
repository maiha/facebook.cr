CREATE TABLE referral (
  id String,
  invite_limit Nullable(Int64),
  messenger_cta Nullable(String),
  messenger_promotion_text Nullable(String),
  namespace Nullable(String),
  need_promo_code Nullable(UInt8),
  offer_origin Nullable(String),
  promotion_text Nullable(String),
  receiver_benefits_text Nullable(String),
  referral_link_uri Nullable(String),
  sender_benefits_text Nullable(String)
)
ENGINE = Log
