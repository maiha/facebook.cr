CREATE TABLE business_creative (
  id String,
  creation_time Nullable(String),
  duration Nullable(Int64),
  hash Nullable(String),
  height Nullable(Int64),
  name Nullable(String),
  thumbnail Nullable(String),
  type Nullable(String),
  url Nullable(String),
  video_id Nullable(String),
  width Nullable(Int64)
)
ENGINE = Log
