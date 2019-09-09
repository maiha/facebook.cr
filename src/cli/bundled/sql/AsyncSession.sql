CREATE TABLE async_session (
  id String,
  complete_time Nullable(String),
  error_code Nullable(Int64),
  exception Nullable(String),
  method Nullable(String),
  name Nullable(String),
  percent_completed Nullable(Int64),
  platform_version Nullable(String),
  result Nullable(String),
  start_time Nullable(String),
  status Nullable(String),
  uri Nullable(String)
)
ENGINE = Log
