CREATE TABLE page_upcoming_change (
  id String,
  change_type Nullable(String),
  effective_time Nullable(String),
  timer_status Nullable(String)
)
ENGINE = Log
