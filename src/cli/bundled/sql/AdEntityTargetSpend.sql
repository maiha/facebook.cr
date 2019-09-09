CREATE TABLE ad_entity_target_spend (
  amount Nullable(String),
  has_error Nullable(UInt8),
  is_accurate Nullable(UInt8),
  is_prorated Nullable(UInt8),
  is_updating Nullable(UInt8)
)
ENGINE = Log
