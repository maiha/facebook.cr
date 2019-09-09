CREATE TABLE ad_study_objective (
  id String,
  is_primary Nullable(UInt8),
  last_updated_results Nullable(String),
  name Nullable(String),
  results Array(String),
  type Nullable(String)
)
ENGINE = Log
