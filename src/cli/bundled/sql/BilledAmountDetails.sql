CREATE TABLE billed_amount_details (
  currency Nullable(String),
  net_amount Nullable(String),
  tax_amount Nullable(String),
  total_amount Nullable(String)
)
ENGINE = Log
