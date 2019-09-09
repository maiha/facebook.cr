CREATE TABLE privacy (
  allow Nullable(String),
  deny Nullable(String),
  description Nullable(String),
  friends Nullable(String),
  networks Nullable(String),
  value Nullable(String)
)
ENGINE = Log
