CREATE TABLE canvas (
  id String,
  background_color Nullable(String),
  canvas_link Nullable(String),
  is_hidden Nullable(UInt8),
  is_published Nullable(UInt8),
  name Nullable(String),
  update_time Nullable(Int64)
)
ENGINE = Log
