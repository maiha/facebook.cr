CREATE TABLE live_video_input_stream (
  id String,
  dash_ingest_url Nullable(String),
  dash_preview_url Nullable(String),
  is_master Nullable(UInt8),
  secure_stream_url Nullable(String),
  stream_id Nullable(String),
  stream_url Nullable(String)
)
ENGINE = Log
