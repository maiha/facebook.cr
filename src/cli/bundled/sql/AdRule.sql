CREATE TABLE ad_rule (
  id String,
  account_id String,
  created_time Nullable(DateTime),
  name Nullable(String),
  status Nullable(String),
  updated_time DateTime
)
ENGINE = Log
