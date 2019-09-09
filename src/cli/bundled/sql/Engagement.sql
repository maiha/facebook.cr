CREATE TABLE engagement (
  count Nullable(Int64),
  count_string Nullable(String),
  count_string_with_like Nullable(String),
  count_string_without_like Nullable(String),
  social_sentence Nullable(String),
  social_sentence_with_like Nullable(String),
  social_sentence_without_like Nullable(String)
)
ENGINE = Log
