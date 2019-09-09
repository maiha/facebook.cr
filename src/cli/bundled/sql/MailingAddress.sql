CREATE TABLE mailing_address (
  id String,
  city Nullable(String),
  country Nullable(String),
  postal_code Nullable(String),
  region Nullable(String),
  street1 Nullable(String),
  street2 Nullable(String)
)
ENGINE = Log
