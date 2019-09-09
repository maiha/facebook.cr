CREATE TABLE open_graph_object (
  id String,
  created_time Nullable(DateTime),
  description Nullable(String),
  determiner Nullable(String),
  is_scraped Nullable(UInt8),
  post_action_id Nullable(String),
  see_also Array(String),
  site_name Nullable(String),
  title Nullable(String),
  type Nullable(String),
  updated_time DateTime
)
ENGINE = Log
