CREATE TABLE currency_amount (
  amount Nullable(String),
  amount_in_hundredths Nullable(String),
  currency Nullable(String),
  offsetted_amount Nullable(String)
)
ENGINE = Log
