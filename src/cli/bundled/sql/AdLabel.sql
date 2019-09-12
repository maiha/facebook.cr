CREATE TABLE ad_label (
  id String,
  account_id String,
  created_time Nullable(DateTime),
  name Nullable(String),
  updated_time DateTime
)
ENGINE = Log
