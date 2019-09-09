CREATE TABLE da_check (
  action_uri Nullable(String),
  description Nullable(String),
  key Nullable(String),
  result Nullable(String),
  title Nullable(String),
  user_message Nullable(String)
)
ENGINE = Log
