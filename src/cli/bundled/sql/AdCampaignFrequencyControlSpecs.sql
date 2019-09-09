CREATE TABLE ad_campaign_frequency_control_specs (
  event Nullable(String),
  interval_days Nullable(Int64),
  max_frequency Nullable(Int64)
)
ENGINE = Log
