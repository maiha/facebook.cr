CREATE TABLE page_change_proposal (
  id String,
  acceptance_status Nullable(String),
  category Nullable(String),
  current_value Nullable(String),
  proposed_value Nullable(String)
)
ENGINE = Log
