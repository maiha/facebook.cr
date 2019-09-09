CREATE TABLE business_image (
  id String,
  creation_time Nullable(String),
  hash Nullable(String),
  height Nullable(Int64),
  name Nullable(String),
  url Nullable(String),
  url_128 Nullable(String),
  width Nullable(Int64),
  creative_folder_id Nullable(String),
  validation_ad_placements Array(String)
)
ENGINE = Log
