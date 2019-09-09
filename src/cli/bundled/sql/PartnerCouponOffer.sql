CREATE TABLE partner_coupon_offer (
  id String,
  claim_by Nullable(String),
  currency Nullable(String),
  expiration_days Nullable(Int64),
  minimum_spend Nullable(Int64),
  offer_amount Nullable(Int64)
)
ENGINE = Log
