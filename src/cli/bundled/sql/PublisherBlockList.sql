CREATE TABLE publisher_block_list (
  id String,
  account_id String,
  business_owner_id Nullable(String),
  is_auto_blocking_on Nullable(UInt8),
  is_eligible_at_campaign_level Nullable(UInt8),
  last_update_time Nullable(String),
  last_update_user Nullable(String),
  name Nullable(String),
  owner_ad_account_id Nullable(String)
)
ENGINE = Log
