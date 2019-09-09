CREATE TABLE ad_rule_schedule (
  days Array(Int64),
  end_minute Nullable(Int64),
  start_minute Nullable(Int64)
)
ENGINE = Log
