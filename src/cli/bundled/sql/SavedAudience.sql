CREATE TABLE saved_audience (
  id String,
  approximate_count Nullable(Int64),
  description Nullable(String),
  name Nullable(String),
  run_status Nullable(String),
  sentence_lines Array(String),
  targeting Nullable(String),
  time_created Nullable(String),
  time_updated Nullable(String)
)
ENGINE = Log
