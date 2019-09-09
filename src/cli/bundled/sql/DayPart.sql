CREATE TABLE day_part (
  days Array(Int64),
  end_minute Nullable(Int64),
  start_minute Nullable(Int64),
  timezone_type Nullable(String)
)
ENGINE = Log
