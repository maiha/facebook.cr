CREATE TABLE business_user (
  id String,
  email Nullable(String),
  finance_permission Nullable(String),
  first_name Nullable(String),
  ip_permission Nullable(String),
  last_name Nullable(String),
  marked_for_removal Nullable(UInt8),
  name Nullable(String),
  pending_email Nullable(String),
  role Nullable(String),
  title Nullable(String),
  two_fac_status Nullable(String)
)
ENGINE = Log
