CREATE TABLE ad (
  id String,
  account_id String,
  adset_id Nullable(String),
  bid_amount Nullable(Int64),
  bid_type Nullable(String),
  campaign_id Nullable(String),
  configured_status Nullable(String),
  created_time Nullable(DateTime),
  demolink_hash Nullable(String),
  display_sequence Nullable(Int64),
  effective_status Nullable(String),
  engagement_audience Nullable(UInt8),
  is_autobid Nullable(UInt8),
  last_updated_by_app_id Nullable(String),
  name Nullable(String),
  preview_shareable_link Nullable(String),
  priority Nullable(Int64),
  source_ad_id Nullable(String),
  status Nullable(String),
  targeting Nullable(String),
  updated_time DateTime,
  audience_id Nullable(String),
  date_format Nullable(String),
  draft_adgroup_id Nullable(String),
  execution_options Array(String),
  include_demolink_hashes Nullable(UInt8)
)
ENGINE = Log
