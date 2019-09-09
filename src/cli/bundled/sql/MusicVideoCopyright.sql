CREATE TABLE music_video_copyright (
  id String,
  creation_time Nullable(String),
  displayed_matches_count Nullable(Int64),
  in_conflict Nullable(UInt8),
  isrc Nullable(String),
  ownership_countries Array(String),
  reference_file_status Nullable(String),
  ridge_monitoring_status Nullable(String),
  update_time Nullable(String),
  whitelisted_ig_users Array(String)
)
ENGINE = Log
