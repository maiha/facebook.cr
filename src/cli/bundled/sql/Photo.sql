CREATE TABLE photo (
  id String,
  alt_text Nullable(String),
  alt_text_custom Nullable(String),
  backdated_time Nullable(String),
  backdated_time_granularity Nullable(String),
  can_backdate Nullable(UInt8),
  can_delete Nullable(UInt8),
  can_tag Nullable(UInt8),
  created_time Nullable(DateTime),
  height Nullable(Int64),
  icon Nullable(String),
  link Nullable(String),
  name Nullable(String),
  page_story_id Nullable(String),
  picture Nullable(String),
  position Nullable(Int64),
  source Nullable(String),
  updated_time DateTime,
  width Nullable(Int64)
)
ENGINE = Log
