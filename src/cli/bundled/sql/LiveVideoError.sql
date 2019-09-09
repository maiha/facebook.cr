CREATE TABLE live_video_error (
  id String,
  creation_time Nullable(String),
  error_code Nullable(Int64),
  error_message Nullable(String),
  error_type Nullable(String)
)
ENGINE = Log
