CREATE TABLE video_copyright (
  id String,
  content_category Nullable(String),
  copyright_content_id Nullable(String),
  in_conflict Nullable(UInt8),
  monitoring_status Nullable(String),
  monitoring_type Nullable(String),
  reference_file_disabled Nullable(UInt8),
  reference_file_disabled_by_ops Nullable(UInt8),
  reference_file_expired Nullable(UInt8),
  reference_owner_id Nullable(String),
  whitelisted_ids Array(String)
)
ENGINE = Log
