CREATE TABLE ad_keyword_stats (
  id String,
  clicks Nullable(Int64),
  cost_per_total_action Nullable(Float64),
  cost_per_unique_click Nullable(Float64),
  cpc Nullable(Float64),
  cpm Nullable(Float64),
  cpp Nullable(Float64),
  ctr Nullable(Float64),
  frequency Nullable(Float64),
  impressions Nullable(Int64),
  name Nullable(String),
  reach Nullable(Int64),
  spend Nullable(Float64),
  total_actions Nullable(Int64),
  total_unique_actions Nullable(Int64),
  unique_clicks Nullable(Int64),
  unique_ctr Nullable(Float64),
  unique_impressions Nullable(Int64)
)
ENGINE = Log
