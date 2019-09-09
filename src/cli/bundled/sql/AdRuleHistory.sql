CREATE TABLE ad_rule_history (
  exception_code Nullable(Int64),
  exception_message Nullable(String),
  is_manual Nullable(UInt8),
  timestamp Nullable(String)
)
ENGINE = Log
