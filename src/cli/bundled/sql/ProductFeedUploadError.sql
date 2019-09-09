CREATE TABLE product_feed_upload_error (
  id String,
  affected_surfaces Array(String),
  description Nullable(String),
  error_type Nullable(String),
  severity Nullable(String),
  summary Nullable(String),
  total_count Nullable(Int64)
)
ENGINE = Log
