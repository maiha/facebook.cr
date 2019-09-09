CREATE TABLE live_video_ad_break_config (
  default_ad_break_duration Nullable(Int64),
  failure_reason_polling_interval Nullable(Int64),
  first_break_eligible_secs Nullable(Int64),
  guide_url Nullable(String),
  is_eligible_to_onboard Nullable(UInt8),
  is_enabled Nullable(UInt8),
  onboarding_url Nullable(String),
  preparing_duration Nullable(Int64),
  time_between_ad_breaks_secs Nullable(Int64),
  viewer_count_threshold Nullable(Int64)
)
ENGINE = Log
