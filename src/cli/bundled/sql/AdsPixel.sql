CREATE TABLE ads_pixel (
  id String,
  automatic_matching_fields Array(String),
  can_proxy Nullable(UInt8),
  code Nullable(String),
  creation_time Nullable(String),
  data_use_setting Nullable(String),
  enable_automatic_matching Nullable(UInt8),
  first_party_cookie_status Nullable(String),
  is_created_by_business Nullable(UInt8),
  is_unavailable Nullable(UInt8),
  last_fired_time Nullable(String),
  name Nullable(String)
)
ENGINE = Log
