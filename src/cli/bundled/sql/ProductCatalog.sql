CREATE TABLE product_catalog (
  id String,
  default_image_url Nullable(String),
  fallback_image_url Array(String),
  feed_count Nullable(Int64),
  name Nullable(String),
  product_count Nullable(Int64),
  vertical Nullable(String)
)
ENGINE = Log
