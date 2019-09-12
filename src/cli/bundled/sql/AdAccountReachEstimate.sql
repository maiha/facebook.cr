CREATE TABLE ad_account_reach_estimate (
  account_id String,
  estimate_ready Nullable(UInt8),
  users Nullable(Int64)
)
ENGINE = Log
