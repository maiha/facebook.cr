CREATE TABLE ad_placement (
  id String,
  bundle_id Nullable(String),
  display_format Nullable(String),
  external_placement_id Nullable(String),
  google_display_format Nullable(String),
  name Nullable(String),
  platform Nullable(String),
  status Nullable(String)
)
ENGINE = Log
