CREATE TABLE minimum_budget (
  account_id String,
  currency Nullable(String),
  min_daily_budget_high_freq Nullable(Int64),
  min_daily_budget_imp Nullable(Int64),
  min_daily_budget_low_freq Nullable(Int64),
  min_daily_budget_video_views Nullable(Int64)
)
ENGINE = Log
