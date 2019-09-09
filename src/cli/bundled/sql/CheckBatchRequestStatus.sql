CREATE TABLE check_batch_request_status (
  errors_total_count Nullable(Int64),
  handle Nullable(String),
  ids_of_invalid_requests Array(String),
  status Nullable(String),
  warnings_total_count Nullable(Int64)
)
ENGINE = Log
