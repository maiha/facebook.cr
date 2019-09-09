CREATE TABLE instagram_comment (
  id String,
  comment_type Nullable(String),
  created_at Nullable(String),
  instagram_comment_id Nullable(String),
  message Nullable(String)
)
ENGINE = Log
