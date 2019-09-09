CREATE TABLE custom_conversion (
  id String,
  account_id String,
  aggregation_rule Nullable(String),
  creation_time Nullable(String),
  custom_event_type Nullable(String),
  default_conversion_value Nullable(Int64),
  description Nullable(String),
  event_source_type Nullable(String),
  first_fired_time Nullable(String),
  is_archived Nullable(UInt8),
  is_unavailable Nullable(UInt8),
  last_fired_time Nullable(String),
  name Nullable(String),
  retention_days Nullable(Int64),
  rule Nullable(String),
  advanced_rule Nullable(String),
  event_source_id Nullable(String),
  custom_conversion_id Nullable(String)
)
ENGINE = Log
