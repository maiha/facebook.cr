CREATE TABLE extended_credit (
  id String,
  credit_type Nullable(String),
  is_access_revoked Nullable(UInt8),
  is_automated_experience Nullable(UInt8),
  last_payment_time Nullable(String),
  legal_entity_name Nullable(String),
  liable_biz_name Nullable(String),
  owner_business_name Nullable(String),
  partition_from Nullable(String),
  send_bill_to_biz_name Nullable(String)
)
ENGINE = Log
