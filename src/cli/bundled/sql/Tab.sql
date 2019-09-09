CREATE TABLE tab (
  id String,
  custom_image_url Nullable(String),
  custom_name Nullable(String),
  image_url Nullable(String),
  is_non_connection_landing_tab Nullable(UInt8),
  is_permanent Nullable(UInt8),
  link Nullable(String),
  name Nullable(String),
  position Nullable(Int64)
)
ENGINE = Log
