CREATE TABLE ad_study_cell (
  id String,
  ad_entities_count Nullable(Int64),
  control_percentage Nullable(Float64),
  name Nullable(String),
  treatment_percentage Nullable(Float64)
)
ENGINE = Log
