CREATE TABLE ig_user (
  id String,
  biography Nullable(String),
  followers_count Nullable(Int64),
  follows_count Nullable(Int64),
  ig_id Nullable(Int64),
  media_count Nullable(Int64),
  name Nullable(String),
  profile_picture_url Nullable(String),
  username Nullable(String),
  website Nullable(String)
)
ENGINE = Log
