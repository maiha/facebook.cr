CREATE TABLE offsite_pixel (
  id String,
  creator Nullable(String),
  js_pixel Nullable(String),
  last_firing_time Nullable(String),
  name Nullable(String),
  tag Nullable(String)
)
ENGINE = Log
