CREATE TABLE external_event_source (
  id String,
  name Nullable(String),
  source_type Nullable(String)
)
ENGINE = Log
