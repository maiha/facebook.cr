CREATE TABLE ad_image (
  id String,
  account_id String,
  created_time Nullable(DateTime),
  creatives Array(String),
  hash Nullable(String),
  height Nullable(Int64),
  is_associated_creatives_in_adgroups Nullable(UInt8),
  name Nullable(String),
  original_height Nullable(Int64),
  original_width Nullable(Int64),
  permalink_url Nullable(String),
  status Nullable(String),
  updated_time DateTime,
  url Nullable(String),
  url_128 Nullable(String),
  width Nullable(Int64)
)
ENGINE = Log
