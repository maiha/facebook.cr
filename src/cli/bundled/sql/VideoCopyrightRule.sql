CREATE TABLE video_copyright_rule (
  id String,
  copyrights Array(String),
  created_date Nullable(String),
  is_in_migration Nullable(UInt8),
  name Nullable(String)
)
ENGINE = Log
