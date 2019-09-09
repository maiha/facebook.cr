CREATE TABLE messenger_platform_referral (
  id String,
  ad_id Nullable(String),
  ref Nullable(String),
  source Nullable(String),
  type Nullable(String)
)
ENGINE = Log
