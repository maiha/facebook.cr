CREATE TABLE business_advertisable_applications_result (
  id String,
  are_app_events_unavailable Nullable(UInt8),
  has_insight_permission Nullable(UInt8),
  name Nullable(String),
  photo_url Nullable(String)
)
ENGINE = Log
