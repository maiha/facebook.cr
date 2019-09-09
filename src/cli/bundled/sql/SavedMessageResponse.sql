CREATE TABLE saved_message_response (
  id String,
  category Nullable(String),
  image Nullable(String),
  is_enabled Nullable(UInt8),
  message Nullable(String),
  title Nullable(String)
)
ENGINE = Log
