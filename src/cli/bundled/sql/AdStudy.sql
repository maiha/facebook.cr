CREATE TABLE ad_study (
  id String,
  account_id String,
  canceled_time Nullable(String),
  cooldown_start_time Nullable(String),
  created_time Nullable(DateTime),
  description Nullable(String),
  end_time Nullable(String),
  name Nullable(String),
  observation_end_time Nullable(String),
  results_first_available_date Nullable(String),
  start_time Nullable(String),
  type Nullable(String),
  updated_time DateTime,
  client_business Nullable(String),
  confidence_level Nullable(Float64),
  viewers Array(Int64)
)
ENGINE = Log
