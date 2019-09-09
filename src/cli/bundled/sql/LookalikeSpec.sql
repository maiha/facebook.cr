CREATE TABLE lookalike_spec (
  country Nullable(String),
  is_financial_service Nullable(UInt8),
  origin_event_name Nullable(String),
  origin_event_source_name Nullable(String),
  origin_event_source_type Nullable(String),
  product_set_name Nullable(String),
  ratio Nullable(Float64),
  starting_ratio Nullable(Float64),
  target_countries Array(String),
  target_country_names Array(String),
  type Nullable(String)
)
ENGINE = Log
