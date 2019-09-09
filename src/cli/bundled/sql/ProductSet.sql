CREATE TABLE product_set (
  id String,
  auto_creation_url Nullable(String),
  filter Nullable(String),
  name Nullable(String),
  product_count Nullable(Int64)
)
ENGINE = Log
