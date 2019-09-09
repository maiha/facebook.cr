CREATE TABLE page_restaurant_services (
  catering Nullable(UInt8),
  delivery Nullable(UInt8),
  groups Nullable(UInt8),
  kids Nullable(UInt8),
  outdoor Nullable(UInt8),
  pickup Nullable(UInt8),
  reserve Nullable(UInt8),
  takeout Nullable(UInt8),
  waiter Nullable(UInt8),
  walkins Nullable(UInt8)
)
ENGINE = Log
