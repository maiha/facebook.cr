CREATE TABLE comment (
  id String,
  can_comment Nullable(UInt8),
  can_hide Nullable(UInt8),
  can_like Nullable(UInt8),
  can_remove Nullable(UInt8),
  can_reply_privately Nullable(UInt8),
  comment_count Nullable(Int64),
  created_time Nullable(DateTime),
  is_hidden Nullable(UInt8),
  is_private Nullable(UInt8),
  like_count Nullable(Int64),
  live_broadcast_timestamp Nullable(Int64),
  message Nullable(String),
  permalink_url Nullable(String),
  user_likes Nullable(UInt8)
)
ENGINE = Log
