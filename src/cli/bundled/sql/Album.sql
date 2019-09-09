CREATE TABLE album (
  id String,
  backdated_time Nullable(String),
  backdated_time_granularity Nullable(String),
  can_backdate Nullable(UInt8),
  can_upload Nullable(UInt8),
  count Nullable(Int64),
  created_time Nullable(DateTime),
  description Nullable(String),
  is_user_facing Nullable(UInt8),
  location Nullable(String),
  modified_major Nullable(String),
  name Nullable(String),
  photo_count Nullable(Int64),
  privacy Nullable(String),
  type Nullable(String),
  updated_time DateTime,
  video_count Nullable(Int64)
)
ENGINE = Log
