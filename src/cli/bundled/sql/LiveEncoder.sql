CREATE TABLE live_encoder (
  id String,
  brand Nullable(String),
  creation_time Nullable(String),
  device_id Nullable(String),
  last_heartbeat_time Nullable(String),
  model Nullable(String),
  name Nullable(String),
  status Nullable(String),
  version Nullable(String)
)
ENGINE = Log
