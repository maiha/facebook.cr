CREATE TABLE hotel_room (
  id String,
  base_price Nullable(String),
  currency Nullable(String),
  description Nullable(String),
  images Array(String),
  margin_level Nullable(String),
  name Nullable(String),
  room_id Nullable(String),
  sale_price Nullable(String),
  url Nullable(String)
)
ENGINE = Log
