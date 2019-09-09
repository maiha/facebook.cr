CREATE TABLE lead (
  id String,
  ad_id Nullable(String),
  ad_name Nullable(String),
  adset_id Nullable(String),
  adset_name Nullable(String),
  campaign_id Nullable(String),
  campaign_name Nullable(String),
  created_time Nullable(DateTime),
  form_id Nullable(String),
  is_organic Nullable(UInt8),
  partner_name Nullable(String),
  platform Nullable(String),
  retailer_item_id Nullable(String)
)
ENGINE = Log
