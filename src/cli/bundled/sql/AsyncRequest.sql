CREATE TABLE async_request (
  id Int64,
  account_id String,
  result Nullable(String),
  status Nullable(Int64),
  type Nullable(Int64)
)
ENGINE = Log
