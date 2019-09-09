CREATE TABLE oracle_transaction (
  id String,
  ad_account_ids Array(String),
  amount Nullable(String),
  billing_period Nullable(String),
  cdn_download_uri Nullable(String),
  currency Nullable(String),
  download_uri Nullable(String),
  due_date Nullable(String),
  entity Nullable(String),
  invoice_date Nullable(String),
  invoice_id Nullable(String),
  invoice_type Nullable(String),
  liability_type Nullable(String),
  payment_status Nullable(String),
  payment_term Nullable(String),
  type Nullable(String)
)
ENGINE = Log
