CREATE TABLE split_test_config (
  id String,
  budget Nullable(Int64),
  early_winner_declaration_enabled Nullable(UInt8),
  end_time Nullable(String),
  splits Array(Int64),
  start_time Nullable(String),
  test_variable Nullable(String)
)
ENGINE = Log
