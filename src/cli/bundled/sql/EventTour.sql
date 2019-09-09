CREATE TABLE event_tour (
  id String,
  description Nullable(String),
  dominant_color Nullable(String),
  end_time Nullable(String),
  is_past Nullable(UInt8),
  last_event_timestamp Nullable(Int64),
  name Nullable(String),
  num_events Nullable(Int64),
  publishing_state Nullable(String),
  scheduled_publish_timestamp Nullable(Int64),
  start_time Nullable(String),
  ticketing_uri Nullable(String)
)
ENGINE = Log
