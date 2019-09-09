CREATE TABLE ads_pixel_stats (
  count Nullable(Int64),
  diagnostics_hourly_last_timestamp Nullable(String),
  event Nullable(String),
  value Nullable(String)
)
ENGINE = Log
