CREATE TABLE hotel (
  id String,
  address Nullable(String),
  brand Nullable(String),
  currency Nullable(String),
  description Nullable(String),
  guest_ratings Nullable(String),
  hotel_id Nullable(String),
  images Array(String),
  lowest_base_price Nullable(String),
  loyalty_program Nullable(String),
  margin_level Nullable(Int64),
  name Nullable(String),
  phone Nullable(String),
  sale_price Nullable(String),
  sanitized_images Array(String),
  star_rating Nullable(Float64),
  url Nullable(String),
  base_price Nullable(Int64)
)
ENGINE = Log
