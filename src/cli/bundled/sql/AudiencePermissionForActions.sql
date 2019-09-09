CREATE TABLE audience_permission_for_actions (
  can_edit Nullable(UInt8),
  can_see_insight Nullable(UInt8),
  can_share Nullable(UInt8),
  subtype_supports_lookalike Nullable(UInt8),
  supports_recipient_lookalike Nullable(UInt8)
)
ENGINE = Log
