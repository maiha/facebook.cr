CREATE TABLE vault_deleted_image (
  id String,
  client_image_hash Nullable(String),
  date_taken Nullable(String),
  remote_id Nullable(String)
)
ENGINE = Log
