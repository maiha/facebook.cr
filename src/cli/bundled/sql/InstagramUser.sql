CREATE TABLE instagram_user (
  id String,
  follow_count Nullable(Int64),
  followed_by_count Nullable(Int64),
  has_profile_picture Nullable(UInt8),
  is_private Nullable(UInt8),
  is_published Nullable(UInt8),
  media_count Nullable(Int64),
  profile_pic Nullable(String),
  username Nullable(String)
)
ENGINE = Log
