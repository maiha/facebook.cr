CREATE TABLE flight (
  id String,
  currency Nullable(String),
  description Nullable(String),
  destination_airport Nullable(String),
  destination_city Nullable(String),
  flight_id Nullable(String),
  images Array(String),
  oneway_currency Nullable(String),
  oneway_price Nullable(String),
  origin_airport Nullable(String),
  origin_city Nullable(String),
  price Nullable(String),
  sanitized_images Array(String),
  url Nullable(String)
)
ENGINE = Log
