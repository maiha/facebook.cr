CREATE TABLE lead_gen_question (
  id String,
  conditional_questions_group_id Nullable(String),
  inline_context Nullable(String),
  key Nullable(String),
  label Nullable(String),
  type Nullable(String)
)
ENGINE = Log
