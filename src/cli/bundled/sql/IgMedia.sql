CREATE TABLE ig_media (
  id String,
  caption Nullable(String),
  comments_count Nullable(Int64),
  ig_id Nullable(String),
  is_comment_enabled Nullable(UInt8),
  like_count Nullable(Int64),
  media_type Nullable(String),
  media_url Nullable(String),
  permalink Nullable(String),
  shortcode Nullable(String),
  thumbnail_url Nullable(String),
  timestamp Nullable(String),
  username Nullable(String)
)
ENGINE = Log
