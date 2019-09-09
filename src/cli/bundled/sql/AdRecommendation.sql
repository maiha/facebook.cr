CREATE TABLE ad_recommendation (
  blame_field Nullable(String),
  code Nullable(Int64),
  confidence Nullable(String),
  importance Nullable(String),
  message Nullable(String),
  title Nullable(String)
)
ENGINE = Log
