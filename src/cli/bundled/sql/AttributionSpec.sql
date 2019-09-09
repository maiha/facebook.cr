CREATE TABLE attribution_spec (
  event_type Nullable(String),
  window_days Nullable(Int64)
)
ENGINE = Log
