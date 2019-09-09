CREATE TABLE video_thumbnail (
  id String,
  height Nullable(Int64),
  is_preferred Nullable(UInt8),
  name Nullable(String),
  scale Nullable(Float64),
  uri Nullable(String),
  width Nullable(Int64)
)
ENGINE = Log
