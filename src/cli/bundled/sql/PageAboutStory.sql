CREATE TABLE page_about_story (
  id String,
  is_published Nullable(UInt8),
  page_id Nullable(String),
  title Nullable(String)
)
ENGINE = Log
