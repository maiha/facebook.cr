CREATE TABLE currency (
  currency_offset Nullable(Int64),
  usd_exchange Nullable(Float64),
  usd_exchange_inverse Nullable(Float64),
  user_currency Nullable(String)
)
ENGINE = Log
