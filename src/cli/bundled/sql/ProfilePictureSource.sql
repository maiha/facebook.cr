CREATE TABLE profile_picture_source (
  bottom Nullable(Int64),
  cache_key Nullable(String),
  height Nullable(Int64),
  is_silhouette Nullable(UInt8),
  left Nullable(Int64),
  right Nullable(Int64),
  top Nullable(Int64),
  url Nullable(String),
  width Nullable(Int64)
)
ENGINE = Log
