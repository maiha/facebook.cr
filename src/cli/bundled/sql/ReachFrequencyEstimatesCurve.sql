CREATE TABLE reach_frequency_estimates_curve (
  budget Array(Int64),
  conversion Array(Int64),
  impression Array(Int64),
  interpolated_reach Nullable(Float64),
  num_points Nullable(Int64),
  raw_impression Array(Int64),
  raw_reach Array(Int64),
  reach Array(Int64)
)
ENGINE = Log
