CREATE TABLE client_transparency_status (
  grace_period_expiration_date Nullable(String),
  has_owning_business Nullable(UInt8),
  is_satisfied Nullable(UInt8)
)
ENGINE = Log
