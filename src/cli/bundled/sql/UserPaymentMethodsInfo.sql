CREATE TABLE user_payment_methods_info (
  account_id String,
  available_card_types Array(String),
  available_payment_methods Array(String),
  country Nullable(String),
  currency Nullable(String)
)
ENGINE = Log
