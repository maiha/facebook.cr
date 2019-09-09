CREATE TABLE iterative_split_test_config (
  id String,
  budget Nullable(Int64),
  end_time Nullable(String),
  iterative_split_test_original_variant_id Nullable(String),
  splits Array(Int64),
  start_time Nullable(String)
)
ENGINE = Log
