CREATE TABLE brand_safety_block_list_usage (
  current_usage Nullable(Int64),
  new_usage Nullable(Int64),
  platform Nullable(String),
  position Nullable(String),
  threshold Nullable(Int64)
)
ENGINE = Log
