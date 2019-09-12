CREATE TABLE brand_audience (
  id String,
  account_id String,
  delivery_targeting Nullable(String),
  description Nullable(String),
  name Nullable(String),
  sentence_lines Array(String),
  status Nullable(String),
  targeting Nullable(String),
  time_created Nullable(String),
  time_updated Nullable(String)
)
ENGINE = Log
