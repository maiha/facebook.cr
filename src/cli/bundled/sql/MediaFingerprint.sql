CREATE TABLE media_fingerprint (
  id String,
  duration_in_sec Nullable(Float64),
  fingerprint_content_type Nullable(String),
  fingerprint_type Nullable(String),
  title Nullable(String),
  universal_content_id Nullable(String)
)
ENGINE = Log
