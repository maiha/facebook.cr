CREATE TABLE ad_account_ad_rules_history (
  exception_code Nullable(Int64),
  exception_message Nullable(String),
  is_manual Nullable(UInt8),
  rule_id Nullable(Int64),
  timestamp Nullable(String)
)
ENGINE = Log
