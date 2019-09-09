CREATE TABLE unified_thread (
  id String,
  can_reply Nullable(UInt8),
  is_subscribed Nullable(UInt8),
  link Nullable(String),
  message_count Nullable(Int64),
  name Nullable(String),
  scoped_thread_key Nullable(String),
  snippet Nullable(String),
  subject Nullable(String),
  unread_count Nullable(Int64),
  updated_time DateTime,
  wallpaper Nullable(String)
)
ENGINE = Log
