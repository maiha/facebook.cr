CREATE TABLE system_user (
  id String,
  created_time Nullable(DateTime),
  finance_permission Nullable(String),
  ip_permission Nullable(String),
  name Nullable(String),
  role Nullable(String),
  system_user_id Nullable(Int64)
)
ENGINE = Log
