CREATE TABLE app_request (
  id String,
  action_type Nullable(String),
  created_time Nullable(DateTime),
  data Nullable(String),
  message Nullable(String)
)
ENGINE = Log
