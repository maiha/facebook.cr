CREATE TABLE instant_article (
  id String,
  canonical_url Nullable(String),
  development_mode Nullable(UInt8),
  html_source Nullable(String),
  publish_status Nullable(String),
  published Nullable(UInt8)
)
ENGINE = Log
