CREATE TABLE product_feed_upload (
  id String,
  end_time Nullable(String),
  error_count Nullable(Int64),
  filename Nullable(String),
  input_method Nullable(String),
  num_deleted_items Nullable(Int64),
  num_detected_items Nullable(Int64),
  num_invalid_items Nullable(Int64),
  num_persisted_items Nullable(Int64),
  start_time Nullable(String),
  url Nullable(String),
  warning_count Nullable(Int64)
)
ENGINE = Log
