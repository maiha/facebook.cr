CREATE TABLE destination (
  id String,
  address Nullable(String),
  currency Nullable(String),
  description Nullable(String),
  destination_id Nullable(String),
  images Array(String),
  name Nullable(String),
  price Nullable(String),
  price_change Nullable(String),
  sanitized_images Array(String),
  types Array(String),
  url Nullable(String)
)
ENGINE = Log
