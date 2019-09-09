CREATE TABLE rtb_dynamic_post (
  id String,
  created Nullable(String),
  description Nullable(String),
  image_url Nullable(String),
  link Nullable(String),
  message Nullable(String),
  owner_id Nullable(String),
  place_id Nullable(String),
  product_id Nullable(String),
  title Nullable(String)
)
ENGINE = Log
