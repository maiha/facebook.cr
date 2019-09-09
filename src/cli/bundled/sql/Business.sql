CREATE TABLE business (
  id String,
  block_offline_analytics Nullable(UInt8),
  created_time Nullable(DateTime),
  extended_updated_time Nullable(String),
  is_hidden Nullable(UInt8),
  is_instagram_enabled_in_fb_analytics Nullable(UInt8),
  link Nullable(String),
  name Nullable(String),
  payment_account_id Nullable(String),
  profile_picture_uri Nullable(String),
  timezone_id Nullable(Int64),
  two_factor_type Nullable(String),
  updated_time DateTime,
  verification_status Nullable(String),
  vertical_id Nullable(Int64)
)
ENGINE = Log
