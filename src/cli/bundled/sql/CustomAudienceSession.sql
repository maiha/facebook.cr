CREATE TABLE custom_audience_session (
  end_time Nullable(String),
  num_invalid_entries Nullable(String),
  num_matched Nullable(String),
  num_received Nullable(String),
  progress Nullable(String),
  session_id Nullable(String),
  stage Nullable(String),
  start_time Nullable(String)
)
ENGINE = Log
