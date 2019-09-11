CREATE TABLE ad_account_targeting_unified (
  id String,
  audience_size Nullable(Int64),
  conversion_lift Nullable(Float64),
  description Nullable(String),
  img Nullable(String),
  info Nullable(String),
  info_title Nullable(String),
  is_recommendation Nullable(UInt8),
  key Nullable(String),
  link Nullable(String),
  name Nullable(String),
  parent Nullable(String),
  partner Nullable(String),
  path Array(String),
  performance_rating Nullable(Int64),
  raw_name Nullable(String),
  recommendation_model Nullable(String),
  search_interest_id Nullable(String),
  source Nullable(String),
  spend Nullable(Float64),
  type Nullable(String),
  valid Nullable(UInt8)
)
ENGINE = Log