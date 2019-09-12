CREATE TABLE ad_account_user (
  id String,
  account_id String,
  name Nullable(String),
  tasks Array(String)
)
ENGINE = Log
