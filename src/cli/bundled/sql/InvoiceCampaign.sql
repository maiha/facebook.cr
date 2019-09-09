CREATE TABLE invoice_campaign (
  ad_account_id Nullable(String),
  campaign_id Nullable(String),
  campaign_name Nullable(String),
  clicks Nullable(Int64),
  conversions Nullable(Int64),
  impressions Nullable(Int64),
  tags Array(String)
)
ENGINE = Log
