CREATE TABLE insights_result (
  id String,
  description Nullable(String),
  description_from_api_doc Nullable(String),
  name Nullable(String),
  period Nullable(String),
  title Nullable(String)
)
ENGINE = Log
