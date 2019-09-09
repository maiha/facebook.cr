CREATE TABLE product_feed_schedule (
  day_of_month Nullable(Int64),
  day_of_week Nullable(String),
  hour Nullable(Int64),
  interval Nullable(String),
  interval_count Nullable(Int64),
  minute Nullable(Int64),
  timezone Nullable(String),
  url Nullable(String),
  username Nullable(String)
)
ENGINE = Log
