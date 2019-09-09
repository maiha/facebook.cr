CREATE TABLE ad_campaign_learning_stage_info (
  attribution_windows Array(String),
  conversions Nullable(Int64),
  exit_reason Nullable(String),
  last_sig_edit_ts Nullable(Int64),
  status Nullable(String),
  types Array(String)
)
ENGINE = Log
