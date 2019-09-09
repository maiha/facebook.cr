CREATE TABLE food_drink_order (
  id String,
  admin_note Nullable(String),
  creation_time Nullable(String),
  customer_name Nullable(String),
  customer_phone_number Nullable(String),
  note Nullable(String),
  state Nullable(String),
  update_time Nullable(String)
)
ENGINE = Log
