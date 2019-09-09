CREATE TABLE group (
  id String,
  archived Nullable(UInt8),
  created_time Nullable(DateTime),
  description Nullable(String),
  email Nullable(String),
  icon Nullable(String),
  link Nullable(String),
  member_count Nullable(Int64),
  member_request_count Nullable(Int64),
  name Nullable(String),
  permissions Array(String),
  privacy Nullable(String),
  purpose Nullable(String),
  subdomain Nullable(String),
  updated_time DateTime
)
ENGINE = Log
