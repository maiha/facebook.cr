CREATE TABLE page_saved_filter (
  id String,
  display_name Nullable(String),
  page_id Nullable(String),
  section Nullable(String),
  time_created Nullable(Int64),
  time_updated Nullable(Int64)
)
ENGINE = Log
