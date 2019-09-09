CREATE TABLE profile (
  id String,
  can_post Nullable(UInt8),
  link Nullable(String),
  name Nullable(String),
  pic Nullable(String),
  pic_large Nullable(String),
  pic_small Nullable(String),
  pic_square Nullable(String),
  profile_type Nullable(String),
  username Nullable(String)
)
ENGINE = Log
