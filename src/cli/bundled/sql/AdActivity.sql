CREATE TABLE ad_activity (
  actor_id Nullable(String),
  actor_name Nullable(String),
  application_id Nullable(String),
  application_name Nullable(String),
  date_time_in_timezone Nullable(String),
  event_time Nullable(String),
  event_type Nullable(String),
  extra_data Nullable(String),
  object_id Nullable(String),
  object_name Nullable(String),
  object_type Nullable(String),
  translated_event_type Nullable(String)
)
ENGINE = Log
