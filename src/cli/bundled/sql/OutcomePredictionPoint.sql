CREATE TABLE outcome_prediction_point (
  actions Nullable(Float64),
  impressions Nullable(Float64),
  reach Nullable(Float64),
  spend Nullable(Int64)
)
ENGINE = Log
