CREATE TABLE measurement_upload_event (
  id String,
  aggregation_level Nullable(String),
  conversion_end_date Nullable(String),
  conversion_start_date Nullable(String),
  event_status Nullable(String),
  lookback_window Nullable(String),
  match_universe Nullable(String),
  timezone Nullable(String),
  upload_tag Nullable(String)
)
ENGINE = Log
