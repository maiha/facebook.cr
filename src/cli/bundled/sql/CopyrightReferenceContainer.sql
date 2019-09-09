CREATE TABLE copyright_reference_container (
  id String,
  content_type Nullable(String),
  copyright_creation_time Nullable(String),
  download_hd_url Nullable(String),
  duration_in_sec Nullable(Float64),
  fingerprint_validity Nullable(String),
  iswc Nullable(String),
  published_time Nullable(String),
  thumbnail_url Nullable(String),
  title Nullable(String),
  universal_content_id Nullable(String),
  writer_names Array(String)
)
ENGINE = Log
