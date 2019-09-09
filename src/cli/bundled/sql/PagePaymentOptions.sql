CREATE TABLE page_payment_options (
  amex Nullable(Int64),
  cash_only Nullable(Int64),
  discover Nullable(Int64),
  mastercard Nullable(Int64),
  visa Nullable(Int64)
)
ENGINE = Log
