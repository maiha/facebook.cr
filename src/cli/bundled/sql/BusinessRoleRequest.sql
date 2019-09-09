CREATE TABLE business_role_request (
  id String,
  created_time Nullable(DateTime),
  email Nullable(String),
  expiration_time Nullable(String),
  expiry_time Nullable(String),
  finance_role Nullable(String),
  invite_link Nullable(String),
  ip_role Nullable(String),
  role Nullable(String),
  status Nullable(String),
  updated_time DateTime
)
ENGINE = Log
