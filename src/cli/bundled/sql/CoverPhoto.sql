CREATE TABLE cover_photo (
  id String,
  cover_id Nullable(String),
  offset_x Nullable(Float64),
  offset_y Nullable(Float64),
  source Nullable(String)
)
ENGINE = Log
