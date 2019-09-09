CREATE TABLE video_list (
  id String,
  creation_time Nullable(String),
  description Nullable(String),
  last_modified Nullable(String),
  season_number Nullable(Int64),
  thumbnail Nullable(String),
  title Nullable(String),
  videos_count Nullable(Int64)
)
ENGINE = Log
