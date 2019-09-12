CREATE TABLE targeting_sentence_line (
  id String,
  account_id String,
  params Nullable(String),
  targetingsentencelines Array(String)
)
ENGINE = Log
