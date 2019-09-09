CREATE TABLE ad_async_request (
  id String,
  created_time Nullable(DateTime),
  scope_object_id Nullable(String),
  status Nullable(String),
  type Nullable(String),
  updated_time DateTime
)
ENGINE = Log
