CREATE TABLE video_poll (
  id String,
  close_after_voting Nullable(UInt8),
  default_open Nullable(UInt8),
  question Nullable(String),
  show_gradient Nullable(UInt8),
  show_results Nullable(UInt8),
  status Nullable(String)
)
ENGINE = Log
