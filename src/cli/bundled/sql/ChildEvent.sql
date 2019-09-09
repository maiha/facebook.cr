CREATE TABLE child_event (
  id String,
  end_time Nullable(String),
  start_time Nullable(String),
  ticket_uri Nullable(String)
)
ENGINE = Log
