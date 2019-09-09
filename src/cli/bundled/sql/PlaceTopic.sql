CREATE TABLE place_topic (
  id String,
  count Nullable(Int64),
  has_children Nullable(UInt8),
  icon_url Nullable(String),
  name Nullable(String),
  parent_ids Array(String),
  plural_name Nullable(String),
  top_subtopic_names Array(String)
)
ENGINE = Log
