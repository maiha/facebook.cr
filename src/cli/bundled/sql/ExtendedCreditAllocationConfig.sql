CREATE TABLE extended_credit_allocation_config (
  id String,
  liability_type Nullable(String),
  partition_type Nullable(String),
  request_status Nullable(String),
  send_bill_to Nullable(String)
)
ENGINE = Log
