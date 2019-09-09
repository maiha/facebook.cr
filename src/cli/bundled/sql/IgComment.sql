CREATE TABLE ig_comment (
  id String,
  hidden Nullable(UInt8),
  like_count Nullable(Int64),
  text Nullable(String),
  timestamp Nullable(String),
  username Nullable(String)
)
ENGINE = Log
