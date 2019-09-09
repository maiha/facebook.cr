CREATE TABLE voip_info (
  has_mobile_app Nullable(UInt8),
  has_permission Nullable(UInt8),
  is_callable Nullable(UInt8),
  is_callable_webrtc Nullable(UInt8),
  is_pushable Nullable(UInt8),
  reason_code Nullable(Int64),
  reason_description Nullable(String)
)
ENGINE = Log
