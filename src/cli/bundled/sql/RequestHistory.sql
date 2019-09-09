CREATE TABLE request_history (
  api_version Nullable(String),
  created_time Nullable(DateTime),
  error_code Nullable(Int64),
  graph_path Nullable(String),
  http_method Nullable(String)
)
ENGINE = Log
