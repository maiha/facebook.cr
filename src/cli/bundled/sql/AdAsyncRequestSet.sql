CREATE TABLE ad_async_request_set (
  id String,
  canceled_count Nullable(Int64),
  created_time Nullable(DateTime),
  error_count Nullable(Int64),
  in_progress_count Nullable(Int64),
  initial_count Nullable(Int64),
  is_completed Nullable(UInt8),
  name Nullable(String),
  notification_mode Nullable(String),
  notification_status Nullable(String),
  notification_uri Nullable(String),
  owner_id Nullable(String),
  success_count Nullable(Int64),
  total_count Nullable(Int64),
  updated_time DateTime
)
ENGINE = Log
