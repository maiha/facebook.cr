CREATE TABLE product_feed (
  id String,
  country Nullable(String),
  created_time Nullable(DateTime),
  default_currency Nullable(String),
  deletion_enabled Nullable(UInt8),
  delimiter Nullable(String),
  encoding Nullable(String),
  file_name Nullable(String),
  name Nullable(String),
  override_type Nullable(String),
  product_count Nullable(Int64),
  quoted_fields_mode Nullable(String),
  feed_type Nullable(String),
  rules Array(String)
)
ENGINE = Log
