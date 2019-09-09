CREATE TABLE whats_app_business_account (
  id String,
  currency Nullable(String),
  eligible_for_sending_notifications Nullable(UInt8),
  ineligible_for_sending_notifications_reason Nullable(String),
  message_template_namespace Nullable(String),
  name Nullable(String),
  purchase_order_number Nullable(String),
  status Nullable(String),
  timezone_id Nullable(String)
)
ENGINE = Log
