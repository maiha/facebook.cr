CREATE TABLE link (
  id String,
  caption Nullable(String),
  created_time Nullable(DateTime),
  description Nullable(String),
  icon Nullable(String),
  link Nullable(String),
  message Nullable(String),
  multi_share_optimized Nullable(UInt8),
  name Nullable(String)
)
ENGINE = Log
