CREATE TABLE live_video (
  id String,
  ad_break_failure_reason Nullable(String),
  broadcast_start_time Nullable(String),
  creation_time Nullable(String),
  dash_ingest_url Nullable(String),
  dash_preview_url Nullable(String),
  description Nullable(String),
  embed_html Nullable(String),
  is_manual_mode Nullable(UInt8),
  is_reference_only Nullable(UInt8),
  live_views Nullable(Int64),
  permalink_url Nullable(String),
  planned_start_time Nullable(String),
  seconds_left Nullable(Int64),
  secure_stream_url Nullable(String),
  status Nullable(String),
  stream_url Nullable(String),
  title Nullable(String),
  total_views Nullable(String)
)
ENGINE = Log
