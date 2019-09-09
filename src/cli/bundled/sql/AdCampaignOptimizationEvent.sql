CREATE TABLE ad_campaign_optimization_event (
  custom_conversion_id Nullable(String),
  event_sequence Nullable(Int64),
  event_type Nullable(String)
)
ENGINE = Log
