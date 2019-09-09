CREATE TABLE life_event (
  id String,
  created_time Nullable(DateTime),
  description Nullable(String),
  end_time Nullable(String),
  is_hidden Nullable(UInt8),
  start_time Nullable(String),
  title Nullable(String),
  updated_time DateTime
)
ENGINE = Log
