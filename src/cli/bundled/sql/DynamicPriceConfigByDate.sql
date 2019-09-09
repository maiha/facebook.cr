CREATE TABLE dynamic_price_config_by_date (
  id String,
  checkin_date Nullable(String),
  prices Nullable(String)
)
ENGINE = Log
